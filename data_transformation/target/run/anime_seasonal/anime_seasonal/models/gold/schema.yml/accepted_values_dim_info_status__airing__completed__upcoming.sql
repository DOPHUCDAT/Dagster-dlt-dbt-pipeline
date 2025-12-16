
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from "anime_seasonal"."public_gold"."dim_info"
    group by status

)

select *
from all_values
where value_field not in (
    'airing','completed','upcoming'
)



  
  
      
    ) dbt_internal_test