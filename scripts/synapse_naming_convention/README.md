# Synapse Naming Convention Check
This is a CI/CD check that ensure that all the Synapse resource follow our naming convention.
The key idea here are as follows:
- Be strict for all the newly created resource and force them to adhere to the naming convention.
- Ignore the current violations that cannot easily be changed.

## Usage
You can call the script as follows:

```
python scripts/synapse_naming_convention/main.py \
          --root synapse-workspace
```

If every thing adhers to the naming convention it will output nothing and exit with a status `0`.
If some one or more resource do not adhere to the naming convention it will exist with a non zero status code and display the errors per resource:
For example, this output can look something like:
```text
Found the following errors:
- managedVirtualNetwork/default/managedPrivateEndpoint/synapse-ws-sqlOnDemand--sywsvocmpdevweu001.json:
  - Name does not match pattern
```

If for some reason you want to keep a resource that does not adhere to the naming convention, you can ignore it as follows:
```
python scripts/synapse_naming_convention/main.py \
    --root synapse-workspace \
    --exclude trigger/t_master_daily_07.json
    --exclude managedVirtualNetwork/default/managedPrivateEndpoint/synapse-ws-sqlOnDemand--sywsvocmpdevweu001.json
```

## Installation
This scripts uses to external libaries:
- [parse](https://github.com/r1chardj0n3s/parse): To make the parsing and validation of the naming convention easier.
- [pytest](https://docs.pytest.org/en): To test the naming validation logic.

You can install these in virtual environment as follows:

```bash
cd scripts/synapse_naming_convention
python -m venv .venv
source .venv/bin/activate # Assuming WSL might differ on windows

pip install -r requirements.txt
```

## Running test cases
You can run the test cases as follows:
```bash
pytest tests.py
```