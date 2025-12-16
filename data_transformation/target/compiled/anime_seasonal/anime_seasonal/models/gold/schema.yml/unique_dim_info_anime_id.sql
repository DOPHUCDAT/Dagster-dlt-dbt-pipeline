
    
    

select
    anime_id as unique_field,
    count(*) as n_records

from "anime_seasonal"."public_gold"."dim_info"
where anime_id is not null
group by anime_id
having count(*) > 1


