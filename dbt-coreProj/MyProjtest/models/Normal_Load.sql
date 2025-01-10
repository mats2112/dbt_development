-- models/load_and_transform_data.sql

with raw_data as (
    select *
    from "myprojtest-439206.Test.test2"
)

-- Transform the raw data as needed
select
    column1,
    column2,
    column3
from test2
