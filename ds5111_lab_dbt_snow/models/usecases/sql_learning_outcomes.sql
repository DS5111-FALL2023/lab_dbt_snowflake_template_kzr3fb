
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

select course_info.course_id, course_info.name, learning_objectives.learning_objective, course_info.description_short
FROM course_info
INNER JOIN learning_objectives ON course_info.course_id = learning_objectives.lo_course_id
WHERE learning_objective LIKE '%SQL%'

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
