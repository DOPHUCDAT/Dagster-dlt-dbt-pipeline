{{ config(
    schema = 'gold',
    order_by = "anime_id",
    materialized = 'table'
) }}
SELECT anime_id,
    season,
    year
FROM {{ ref('cleaned_data') }}