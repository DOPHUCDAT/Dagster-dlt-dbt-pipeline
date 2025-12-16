{{ config(
    schema = 'gold',
    order_by = "anime_id",
    materialized = 'table'
) }}
SELECT anime_id,
    score,
    scored_by,
    popularity,
    members,
    favorites,
    ranking,
    episodes
FROM {{ ref('cleaned_data') }}