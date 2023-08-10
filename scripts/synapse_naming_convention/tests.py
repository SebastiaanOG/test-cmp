import constants
import main
import pytest


@pytest.mark.parametrize(
    "name,parents,expected",
    [
        ("03 MDB ServiceNow Projects.json", ["MDB"], []),
        ("unknown MDB ServiceNow Projects.json", ["MDB"], ["Index is not a number."]),
        ("03 MDB ServiceNow Projects.json", [], ["Parent name does not exist."]),
        (
            "030 MDB ServiceNow Projects.json",
            ["MDB"],
            ["Child index should not end with 0."],
        ),
        (
            "invalid_pattern.json",
            ["MDB"],
            [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG],
        ),
    ],
)
def test_check_pipelines_names_for_child(
    name: str, parents: list[str], expected: bool
) -> None:
    result = main.check_pipelines_names(name, parents)
    assert result == expected, f"{result} != {expected} for {name}."


@pytest.mark.parametrize(
    "name,expected",
    [
        ("Master.json", []),
        ("00 MDB.json", []),
        ("01 DWH.json", ["Parent index should end with 0."]),
        ("A0 DWH.json", ["Index is not a number."]),
        ("00.json", [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]),
        ("MDB.json", [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]),
    ],
)
def test_check_pipelines_names_for_parent(name: str, expected: bool) -> None:
    result = main.check_pipelines_names(name, [])
    assert result == expected, f"{result} != {expected} for {name}."


@pytest.mark.parametrize(
    "name,expected",
    [
        ("ds_source_dynamics_table.json", []),
        ("ds_sql_dwh_sp.json", []),
        ("ds_sql_dwh_table.json", []),
        ("ds_sql_dwh_table", [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]),
        ("ds_datalake.json", [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]),
        ("ds_datalake_delete.json", [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]),
        ("ds_source_cmptest.json", [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]),
        ("ds_unknown_mdb_table.json", [constants.UNKNOWN_LOCATION_TYPE_ERROR_MSG]),
        ("ds_sql_unknown_table.json", [constants.UNKNOWN_LOCATION_ERROR_MSG]),
    ],
)
def test_check_dataset_names(name: str, expected: bool) -> None:
    result = main.check_dataset_names(name)
    assert result == expected, f"{result} != {expected} for {name}."


@pytest.mark.parametrize(
    "name,expected",
    [
        ("ls_kv_cmp.json", []),
        ("ls_source_cmptest.json", []),
        ("ls_source_dynamics.json", []),
        ("ls_sqldb_dwh.json", []),
        ("ls_sqldb_mdb.json", []),
        ("ls_st_datalake.json", []),
        ("ls_st_datalake", [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]),
        ("st_datalake.json", [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]),
        ("some random name", [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG]),
        ("ls_unknownType_mdb.json", [constants.UNKNOWN_LOCATION_TYPE_ERROR_MSG]),
        ("ls_st_unknownLocation.json", [constants.UNKNOWN_LOCATION_ERROR_MSG]),
    ],
)
def test_check_linked_service_names(name: str, expected: list[str]) -> None:
    result = main.check_linked_service_names(name)
    assert result == expected, f"For {name} {result} != {expected}."


@pytest.mark.parametrize(
    "name,expected",
    [
        ("t_dyn_daily_07_00.json", []),
        ("t_dyn_hourly_07_00.json", []),
        ("t_dyn_monthly_07_00.json", []),
        ("t_dyn_unknown_07_00.json", [constants.UNKNOWN_FREQUENCY_ERROR_MSG]),
        (
            "t_unknown_daily_07_00.json",
            [constants.UNKNOWN_TRIGGERABLE_PIPELINE_ERROR_MSG],
        ),
        ("t_dyn_daily_07_61.json", [constants.INVALID_TIME_FORMAT]),
        ("t_dyn_daily_42_00.json", [constants.INVALID_TIME_FORMAT]),
        ("t_dyn_daily_42.json", [constants.INVALID_TIME_FORMAT]),
        ("t_dyn_daily_0_00.json", [constants.INVALID_TIME_FORMAT]),
    ],
)
def test_check_trigger_name(name: str, expected: list[str]) -> None:
    result = main.check_trigger_name(name)
    assert result == expected, f"For {name} {result} != {expected}."


@pytest.mark.parametrize(
    "name,expected",
    [
        ("mpe_sywsvocmpdevweu001_stvocmpdevweu002_dfs.json", []),
        (
            "mpe_unknown_stvocmpdevweu002_dfs.json",
            [constants.UNKNOWN_SYNAPSE_WORKSPACE_ERROR_MSG],
        ),
        (
            "mpe_sywsvocmpdevweu001_unknown_dfs.json",
            [constants.UNKNOWN_DESTINATION_ERROR_MSG],
        ),
        (
            "mpe_sywsvocmpdevweu001_stvocmpdevweu002_dfs",
            [constants.NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG],
        ),
        (
            "mpe_sywsvocmpdevweu001_stvocmpdevweu002_unknown.json",
            [constants.UNKNOWN_ENDPOINT_TYPE_ERROR_MSG],
        ),
    ],
)
def test_check_managed_private_endpoint_name(name: str, expected: list[str]) -> None:
    result = main.check_managed_private_endpoint_name(name)
    assert result == expected, f"For {name} {result} != {expected}."
