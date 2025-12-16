
  
    

  create  table "anime_seasonal"."public_gold"."fact_anime__dbt_tmp"
  
  
    as
  
  (
    
SELECT anime_id,
    score,
    scored_by,
    popularity,
    members,
    favorites,
    ranking,
    episodes
FROM "anime_seasonal"."public_silver"."cleaned_data"
  );
  