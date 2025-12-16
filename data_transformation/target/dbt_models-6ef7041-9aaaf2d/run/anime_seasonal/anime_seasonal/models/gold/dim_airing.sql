
  
    

  create  table "anime_seasonal"."gold"."dim_airing__dbt_tmp"
  
  
    as
  
  (
    
SELECT anime_id,
    aired_from,
    aired_to
FROM "anime_seasonal"."silver"."cleaned_data"
  );
  