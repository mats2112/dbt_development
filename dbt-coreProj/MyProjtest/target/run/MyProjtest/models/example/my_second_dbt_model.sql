

  create or replace view `myprojtest-439206`.`Test`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `myprojtest-439206`.`Test`.`my_first_dbt_model`
where id = 1;

