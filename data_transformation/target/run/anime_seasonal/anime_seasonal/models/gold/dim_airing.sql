
  
    

  create  table "anime_seasonal"."public_gold"."dim_airing__dbt_tmp"
  
  
    as
  
  (
    
SELECT anime_id,
    aired_from,
    aired_to
FROM "anime_seasonal"."public_silver"."cleaned_data"
  );
  