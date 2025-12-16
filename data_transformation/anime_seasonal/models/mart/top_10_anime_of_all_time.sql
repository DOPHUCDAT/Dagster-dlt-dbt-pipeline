{{ config(materialized = 'view', schema = 'mart') }}
SELECT f.anime_id,
    t.title,
    s.year,
    s.season,
    f.score,
    f.ranking,
    f.members,
    f.favorites
FROM {{ ref('fact_anime') }} f
    JOIN {{ ref('dim_info') }} t ON f.anime_id = t.anime_id
    JOIN {{ ref('dim_season') }} s ON f.anime_id = s.anime_id
WHERE f.score IS NOT NULL
ORDER BY f.score DESC
LIMIT 10