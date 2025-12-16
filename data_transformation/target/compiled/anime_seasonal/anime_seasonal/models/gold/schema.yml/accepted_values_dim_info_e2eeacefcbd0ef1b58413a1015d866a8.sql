
    
    

with all_values as (

    select
        type as value_field,
        count(*) as n_records

    from "anime_seasonal"."public_gold"."dim_info"
    group by type

)

select *
from all_values
where value_field not in (
    'TV','Movie','OVA','ONA','Special','Music'
)


