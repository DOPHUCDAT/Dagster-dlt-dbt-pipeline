
  
    

  create  table "anime_seasonal"."public_gold"."dim_studios__dbt_tmp"
  
  
    as
  
  (
    
SELECT anime_id,
    studios
FROM "anime_seasonal"."public_silver"."cleaned_data"
  );
  