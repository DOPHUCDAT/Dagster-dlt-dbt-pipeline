
  
    

  create  table "anime_seasonal"."gold"."dim_info__dbt_tmp"
  
  
    as
  
  (
    
SELECT anime_id,
    title,
    type,
    source,
    status
FROM "anime_seasonal"."silver"."cleaned_data"
  );
  