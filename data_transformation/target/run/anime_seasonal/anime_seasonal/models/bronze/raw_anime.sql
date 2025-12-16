
  
    

  create  table "anime_seasonal"."public_staging"."raw_anime__dbt_tmp"
  
  
    as
  
  (
    
SELECT *
FROM "anime_seasonal"."staging"."source_anime"
  );
  