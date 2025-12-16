



select
    1
from "anime_seasonal"."public_gold"."dim_airing"

where not(aired_to is null or >= aired_from)

