SELECT anime_id,
    COUNT(*)
FROM silver.cleaned_data
GROUP BY anime_id
HAVING COUNT(*) > 1;