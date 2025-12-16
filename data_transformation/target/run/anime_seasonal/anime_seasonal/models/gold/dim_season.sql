
  
    

  create  table "anime_seasonal"."public_gold"."dim_season__dbt_tmp"
  
  
    as
  
  (
    
SELECT anime_id,
    season,
    year
FROM "anime_seasonal"."public_silver"."cleaned_data"
  );
  