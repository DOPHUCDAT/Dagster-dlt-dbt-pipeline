
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select title
from "anime_seasonal"."public_gold"."dim_info"
where title is null



  
  
      
    ) dbt_internal_test