
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

with source_data as (

    select 1 as course_id
    union all
    select null as course_id

)

select COURSE_ID, NAME, ACTIVE
from course_info
WHERE ACTIVE = FALSE

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
