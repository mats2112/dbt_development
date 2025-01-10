{{ config(
    materialized='table',
    schema='Test',
    alias='test2',
    pre_hook="
        -- Load data from GCS into BigQuery using native BigQuery syntax
        LOAD DATA INTO `myprojtest-439206.Test.test2`
        FROM FILES (
            format = 'CSV',
            uris = ['gs://ms_source/Test_Data.csv'],
            skip_leading_rows = 1  -- Skip the header row (if your CSV has headers)
        );
    "
) }}

-- Define a simple query to select data after it's been loaded
SELECT * FROM `myprojtest-439206.Test.test2`

-- {% if is_incremental() %}
-- WHERE your_unique_key NOT IN (SELECT your_unique_key FROM {{id}})
-- {% endif %}
