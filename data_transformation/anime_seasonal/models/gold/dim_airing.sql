{{ config(
    schema = 'gold',
    order_by = "anime_id",
    materialized = 'table'
) }}
SELECT anime_id,
    aired_from,
    aired_to
FROM {{ ref('cleaned_data') }}