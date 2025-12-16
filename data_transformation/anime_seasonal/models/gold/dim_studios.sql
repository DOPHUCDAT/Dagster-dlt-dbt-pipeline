{{ config(
    schema = 'gold',
    order_by = "anime_id",
    materialized = 'table'
) }}
SELECT anime_id,
    studios
FROM {{ ref('cleaned_data') }}