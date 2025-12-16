
  
    

  create  table "anime_seasonal"."gold"."dim_studios__dbt_tmp"
  
  
    as
  
  (
    
SELECT anime_id,
    studios
FROM "anime_seasonal"."silver"."cleaned_data"
  );
  