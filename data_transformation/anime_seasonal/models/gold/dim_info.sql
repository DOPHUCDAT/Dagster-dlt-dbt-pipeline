{{ config(
    schema = 'gold',
    order_by = "anime_id",
    materialized = 'table'
) }}
SELECT anime_id,
    title,
    type,
    source,
    status
FROM {{ ref('cleaned_data') }}