import sys
import pandas as pd
from string import Template
from pathlib import Path

def main(mdw_toolkit_path, output_dir):
    tables = get_tables(mdw_toolkit_path)
    generate_stored_procedures(tables, mdw_toolkit_path, output_dir)


def get_tables(path):
    sheet_names = pd.ExcelFile(path).sheet_names
    sheet_name_prefix = 'dyn_'
    tables = [sheet_name for sheet_name in sheet_names if sheet_name.startswith(sheet_name_prefix)]
    return tables


def generate_stored_procedures(tables, mdw_toolkit_location, output_dir):
    for table in tables:
        schema, source_table, application_key, data = get_info_from_toolkit(table, mdw_toolkit_location)
        result = generate_stored_procedure(table, schema, source_table, application_key, data)
        save_to_file(result, table, output_dir)


def generate_stored_procedure(table, schema, source_table, application_key, data):
    print(f'Generating stored procedure for table: {table}')
    
    create_temp_table_fields = generate_create_temp_table_fields(data)
    insert_into_temp_table_fields = generate_insert_into_temp_table_fields(table, data)
    hashbytes_fields = generate_hashbytes_fields(data)
    insert_into_table_fields = generate_insert_into_table_fields(data)
    insert_into_select_table_fields = generate_insert_into_select_table_fields(data)

    template_path = Path(Path(__file__).parent, 'sp_load_template.sql')

    with open(template_path, 'r') as file:
        template = Template(file.read())
        source_table_prefix = 'dyn_'

        result = template.substitute(
            table=table,
            schema=schema,
            source_table=f'{source_table_prefix}{source_table}',
            source_schema='staged',
            application_key=application_key,
            temp_table=f'#temp_{table}',
            create_temp_table_fields=create_temp_table_fields,
            insert_into_temp_table_fields=insert_into_temp_table_fields,
            hashbytes_fields=hashbytes_fields,
            insert_into_table_fields=insert_into_table_fields,
            insert_into_select_table_fields=insert_into_select_table_fields
        )

        return result


def get_info_from_toolkit(table, mdw_toolkit_path):
    metadata_start_row = 2
    metadata_end_row = 9
    metadata = pd.read_excel(
        mdw_toolkit_path,
        sheet_name=table,
        header=None,
        nrows=metadata_end_row - metadata_start_row + 1,
        usecols="A:C"
    )

    schema = metadata.iloc[5, 1]
    columns_row = 12
    data_start_row = 14
    data_end_row = 297

    # Skip the row after the header row (because it does not contain data)
    rows_to_skip = [columns_row + 1 - 1]

    data = pd.read_excel(
        mdw_toolkit_path,
        sheet_name=table,
        header=columns_row - 1,
        skiprows=rows_to_skip,
        nrows=data_end_row - data_start_row + 1
    )

    data['Size'] = data['Size'].astype('Int64')
    data['Precision'] = data['Precision'].astype('Int64')

    source_table = data.loc[data['Source Schema'] == 'staging', 'Source Table'].iloc[0]
    application_key = data.loc[data['Display Name'] == 'Application ID', 'Column Name'].iloc[0]

    return schema, source_table, application_key, data


def generate_create_temp_table_fields(data):
    create_temp_table_fields = []

    for _, row in data.iterrows():
        if row['Source System'] != 'DWH':
            continue

        column_name = row['Column Name']
        data_type = row['Datatype'].upper()

        size_precision = ''
        if not pd.isna(row['Precision']):
            if pd.isna(row['Size']):
                raise Exception('Size cannot be null if precision is not null')
            size_precision = f"({str(row['Size'])}, {str(row['Precision'])})"
        else:
            if not pd.isna(row['Size']):
                size_precision = f"({str(row['Size'])})"

        if data_type == 'DATETIME':
            data_type = 'DATETIME2'
            size_precision = '(7)'

        create_temp_table_fields.append(f'            [{column_name}] {data_type}{size_precision}')

    create_temp_table_fields.append('            [dwh_hash] VARBINARY(8000) NOT NULL')
    return ',\n'.join(create_temp_table_fields)


def generate_insert_into_temp_table_fields(table, data):
    insert_into_temp_table_fields = []

    for _, row in data.iterrows():
        if row['Source System'] != 'DWH':
            continue

        column_name = row['Source Field Name']

        if (row['Datatype'].upper() in ['TEXT', 'NTEXT']) or (row['Datatype'].upper() in ['VARCHAR', 'NVARCHAR'] and row['Size'] == 4000):
            insert_into_temp_table_fields.append(f'            LEFT([{column_name}], 4000)')
        else:
            insert_into_temp_table_fields.append(f'            [{column_name}]')

    return ',\n'.join(insert_into_temp_table_fields)


def generate_hashbytes_fields(data):
    plus = ''
    hashbytes_fields = []

    for _, row in data.iterrows():
        if row['Source System'] != 'DWH':
            continue

        column_name = row['Source Field Name']
        datatype = row['Datatype'].upper()

        cast = f'[{column_name}]'
        if datatype in ['DATETIME', 'DATE']:
            cast = f'CONVERT(NVARCHAR(19), [{column_name}], 120)'
        elif datatype in ['INT', 'BIGINT']:
            cast = f'CAST([{column_name}] AS NVARCHAR(20))'
        elif datatype in ['DECIMAL', 'FLOAT', 'NUMERIC']:
            cast = f'CAST([{column_name}] AS NVARCHAR(50))'
        elif (datatype in ['TEXT', 'NTEXT']) or (datatype in ['VARCHAR', 'NVARCHAR'] and row['Size'] == 4000):
            cast = f'CAST(LEFT([{column_name}], 4000) AS NVARCHAR(4000))'
        elif datatype != 'NVARCHAR':
            raise Exception(f"Unknown datatype for column ({column_name}): {datatype}")

        hashbytes_fields.append(f'                {plus}ISNULL({cast}, \'\')')

        if plus == '':
            plus = '+ '

    return '\n'.join(hashbytes_fields)


def generate_insert_into_table_fields(data):
    insert_into_table_fields = []

    for _, row in data.iterrows():
        if row['Source System'] != 'DWH':
            continue

        column_name = row['Column Name']

        if (row['Datatype'].upper() in ['TEXT', 'NTEXT']) or (row['Datatype'].upper() in ['VARCHAR', 'NVARCHAR'] and row['Size'] == 4000):
            insert_into_table_fields.append(f'            LEFT([{column_name}], 4000)')
        else:
            insert_into_table_fields.append(f'            [{column_name}]')

    return ',\n'.join(insert_into_table_fields)


def generate_insert_into_select_table_fields(data):
    insert_into_select_table_fields = []

    for _, row in data.iterrows():
        if row['Source System'] != 'DWH':
            continue

        column_name = row['Column Name']
        insert_into_select_table_fields.append(f'            [T].[{column_name}]')

    return ',\n'.join(insert_into_select_table_fields)


def save_to_file(result, table, output_dir):
    path = Path(output_dir, f'sp_load_{table}.sql')
    with open(path, 'w') as file:
        file.write(result)

if __name__ == '__main__':
    if len(sys.argv) != 3:
        # Example: python generate_sp.py "C:\Users\user\MDWToolkit_Dynamics_Processed.xlsm" "C:\Users\user\dyn_entities"
        print("Usage: python generate_sp.py MDW_TOOLKIT_LOCATION OUTPUT_DIR")
    else:
        mdw_toolkit_path = Path(sys.argv[1])
        output_dir = Path(sys.argv[2])
        main(mdw_toolkit_path, output_dir)
