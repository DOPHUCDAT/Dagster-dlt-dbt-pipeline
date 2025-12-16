
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "anime_seasonal"."public_gold"."dim_airing"

where not(aired_to aired_to is null or aired_to >= aired_from)


  
  
      
    ) dbt_internal_test