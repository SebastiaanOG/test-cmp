import argparse
import time
from argparse import Namespace
from functools import partial
from pathlib import Path

import constants
import parse


def main() -> None:
    """
    This is a CI/CD check that ensure that all the Synapse resource follow our naming convention.
    """

    args = parse_args()

    synapse_root = args.root
    excluded = [Path(excluded) for excluded in args.excluded]

    if not synapse_root.exists():
        raise FileNotFoundError(f"{synapse_root} does not exist")

    parent_pipeline_names = _get_parent_pipeline_names(synapse_root / "pipeline")
    validation_function_per_folder = {
        "dataset": check_dataset_names,
        "linkedService": check_linked_service_names,
        "managedVirtualNetwork/default/managedPrivateEndpoint": check_managed_private_endpoint_name,
        "pipeline": partial(
            check_pipelines_names, parent_pipeline_names=parent_pipeline_names
        ),
    }

    configs_with_errors = []

    for path, validator in validation_function_per_folder.items():
        for file in (synapse_root / path).glob("*.json"):
            if file.relative_to(synapse_root) in excluded:
                continue

            errors = validator(file.name)
            if len(errors) > 0:
                configs_with_errors.append(
                    {
                        "path": file.relative_to(synapse_root),
                        "errors": errors,
                    }
                )

    if len(configs_with_errors) > 0:
        configs_with_errors = sorted(configs_with_errors, key=lambda x: x["path"])
        print("Found the following errors:")
        for config in configs_with_errors:
            print(f"- {config['path']}:")
            for error in config["errors"]:
                print(f"  - {error}")

        exit(1)


def parse_args() -> Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--root", 
        type=Path, 
        required=True,
        help="The absolute path to the root directory of Synapse.",
    )
    parser.add_argument(
        "--exclude",
        dest="excluded",
        action="append",
        help=(
            "Path to exclude from validation."
            "Can be used multiple time to exclude multiple file."
            "The path must be relative to the root directory of Synapse"
        ),
        default=[],
    )

    return parser.parse_args()


def check_linked_service_names(name: str) -> list[str]:
    errors = []
    parsed_name = parse.parse("ls_{location_type}_{location}.json", name)

    if parsed_name is None:
        errors.append(constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG)
        return errors

    return errors


def check_dataset_names(name: str) -> list[str]:
    errors = []
    parsed_name = parse.parse("ds_{location_type}_{location}_{object_type}.json", name)

    if parsed_name is None:
        return [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]


    return errors

def check_pipelines_names(name: str, parent_pipeline_names: list[str]) -> list[str]:
    if name == "Master.json":
        return []

    parsed_child_name = parse.parse("{index} {parent_name} {child_name}.json", name)
    if parsed_child_name is not None:
        return _check_child_pipeline_for_errors(
            parsed_child_name, parent_pipeline_names
        )

    parsed_parent_name = _parse_parent_pipeline(name)
    if parsed_parent_name is not None:
        return _check_parent_pipeline_for_errors(parsed_parent_name)

    return [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]


def _get_parent_pipeline_names(pipeline_dir: Path) -> list[str]:
    parent_pipeline_names = []

    for file in pipeline_dir.glob("*.json"):
        parsed_name = _parse_parent_pipeline(file.name)

        if parsed_name is not None and parsed_name["index"][-1] == "0":
            parent_pipeline_names.append(parsed_name["name"])

    return parent_pipeline_names


def _parse_parent_pipeline(name: str) -> dict[str, str]:
    parsed_name = parse.parse("{index} {name}.json", name)
    return parsed_name


def _check_parent_pipeline_for_errors(parsed_name: dict[str, str]) -> list[str]:
    errors = []

    if not parsed_name["index"].isdigit():
        errors.append("Index is not a number.")

    if parsed_name["index"][-1] != "0":
        errors.append("Parent index should end with 0.")

    return errors


def _check_child_pipeline_for_errors(
    parsed_name: dict[str, str], parent_names: list[str]
) -> list[str]:
    errors = []

    if not parsed_name["index"].isdigit():
        errors.append("Index is not a number.")

    if parsed_name["index"][-1] == "0":
        errors.append("Child index should not end with 0.")

    if parsed_name["parent_name"] not in parent_names:
        errors.append("Parent name does not exist.")

    return errors


def check_trigger_name(name: str) -> list[str]:
    errors = []
    parsed_name = parse.parse("t_{pipeline}_{frequency}_{time}.json", name)

    if parsed_name is None:
        return [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]

    if not is_valid_time(parsed_name["time"]):
        errors.append(constants.INVALID_TIME_FORMAT)

    return errors


def is_valid_time(s: str):
    try:
        time.strptime(s, "%H_%M")
        hour, minute = s.split("_")
        return len(hour) == 2 and len(minute) == 2
    except ValueError:
        return False


def check_managed_private_endpoint_name(name: str) -> list[str]:
    errors = []
    parsed_name = parse.parse("mpe_{origin}_{destination}_{endpoint_type}.json", name)

    if parsed_name is None:
        return [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]

    return errors


if __name__ == "__main__":
    main()
