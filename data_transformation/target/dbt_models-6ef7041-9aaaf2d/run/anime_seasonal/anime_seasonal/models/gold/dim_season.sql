
  
    

  create  table "anime_seasonal"."gold"."dim_season__dbt_tmp"
  
  
    as
  
  (
    
SELECT anime_id,
    season,
    year
FROM "anime_seasonal"."silver"."cleaned_data"
  );
  