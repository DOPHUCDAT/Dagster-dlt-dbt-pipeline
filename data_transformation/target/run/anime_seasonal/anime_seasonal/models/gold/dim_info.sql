
  
    

  create  table "anime_seasonal"."public_gold"."dim_info__dbt_tmp"
  
  
    as
  
  (
    
SELECT anime_id,
    title,
    type,
    source,
    status
FROM "anime_seasonal"."public_silver"."cleaned_data"
  );
  