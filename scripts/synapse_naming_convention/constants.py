LOCATION_TYPES = ["st", "source", "sql", "kv", "sqldb"]
LOCATIONS = ["dwh", "mdb", "dynamics", "servicenow", "datalake", "cmp", "cmptest"]
OBJECT_TYPES = ["table", "sp", "parquet", "json"]
TRIGGERABLE_PIPELINES = ["dyn", "snp", "master"]
FREQUENCIES = ["hourly", "daily", "monthly"]
SYNAPSE_WORKSPACES = ["sywsvocmpdevweu001"]  # TODO should the other environment also be here?
DESTINATIONS = ["stvocmpdevweu002"]
ENDPOINT_TYPES = ["blob", "dfs", "sql"]

# Error messages
NAME_DOES_NOT_MATCH_PATTERN_ERROR_MSG = "Name does not match pattern"
UNKNOWN_LOCATION_TYPE_ERROR_MSG = (
    f"Unknown location type expected one of: {LOCATION_TYPES}."
)
UNKNOWN_LOCATION_ERROR_MSG = f"Unknown location expected one of: {LOCATIONS}."
UNKNOWN_OBJECT_TYPE_ERROR_MSG = f"Unknown object type expected one of: {OBJECT_TYPES}."
INVALID_PIPELINE_INDEX_ERROR_MSG = "Invalid pipeline index."
UNKNOWN_TRIGGERABLE_PIPELINE_ERROR_MSG = (
    f"Unknown triggerable pipeline expected one of: {TRIGGERABLE_PIPELINES}."
)
UNKNOWN_FREQUENCY_ERROR_MSG = f"Unknown frequency expected one of: {FREQUENCIES}."
INVALID_TIME_FORMAT = "Invalid time format. Should be HH_MM."
UNKNOWN_SYNAPSE_WORKSPACE_ERROR_MSG = (
    f"Unknown synapse workspace expected one of: {SYNAPSE_WORKSPACES}."
)
UNKNOWN_DESTINATION_ERROR_MSG = f"Unknown destination expected one of: {DESTINATIONS}."
UNKNOWN_ENDPOINT_TYPE_ERROR_MSG = (
    f"Unknown endpoint type expected one of: {ENDPOINT_TYPES}."
)
