
  
    

  create  table "anime_seasonal"."gold"."fact_anime__dbt_tmp"
  
  
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
FROM "anime_seasonal"."silver"."cleaned_data"
  );
  