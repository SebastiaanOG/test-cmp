import argparse
import time
from argparse import Namespace
from functools import partial
from pathlib import Path

import constants
import parse


def main() -> None:
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
        "trigger": check_trigger_name,
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
    parser.add_argument("--root", type=Path, required=True)
    parser.add_argument(
        "--exclude",
        dest="excluded",
        action="append",
        help="Path to exclude from validation.",
        default=[],
    )

    return parser.parse_args()


def check_linked_service_names(name: str) -> list[str]:
    errors = []
    parsed_name = parse.parse("ls_{location_type}_{location}.json", name)

    if parsed_name is None:
        errors.append(constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG)
        return errors

    errors += _check_location_type_for_errors(parsed_name["location_type"])
    errors += _check_location_for_errors(parsed_name["location"])

    return errors


def _check_location_type_for_errors(location_type: str) -> list[str]:
    if location_type not in constants.LOCATION_TYPES:
        return [constants.UNKNOWN_LOCATION_TYPE_ERROR_MSG]

    return []


def _check_location_for_errors(location: str) -> list[str]:
    if location not in constants.LOCATIONS:
        return [constants.UNKNOWN_LOCATION_ERROR_MSG]

    return []


def check_dataset_names(name: str) -> list[str]:
    errors = []
    parsed_name = parse.parse("ds_{location_type}_{location}_{object_type}.json", name)

    if parsed_name is None:
        return [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]

    errors += _check_location_type_for_errors(parsed_name["location_type"])
    errors += _check_location_for_errors(parsed_name["location"])
    errors += _check_object_type_for_errors(parsed_name["object_type"])

    return errors


def _check_object_type_for_errors(object_type: str) -> list[str]:
    if object_type not in constants.OBJECT_TYPES:
        return [constants.UNKNOWN_OBJECT_TYPE_ERROR_MSG]

    return []


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

        if parsed_name is not None:
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

    if parsed_name["pipeline"] not in constants.TRIGGERABLE_PIPELINES:
        errors.append(constants.UNKNOWN_TRIGGERABLE_PIPELINE_ERROR_MSG)

    if parsed_name["frequency"] not in constants.FREQUENCIES:
        errors.append(constants.UNKNOWN_FREQUENCY_ERROR_MSG)

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

    if parsed_name["origin"] not in constants.SYNAPSE_WORKSPACES:
        errors.append(constants.UNKNOWN_SYNAPSE_WORKSPACE_ERROR_MSG)

    if parsed_name["destination"] not in constants.DESTINATIONS:
        errors.append(constants.UNKNOWN_DESTINATION_ERROR_MSG)

    if parsed_name["endpoint_type"] not in constants.ENDPOINT_TYPES:
        errors.append(constants.UNKNOWN_ENDPOINT_TYPE_ERROR_MSG)

    return errors


if __name__ == "__main__":
    main()
