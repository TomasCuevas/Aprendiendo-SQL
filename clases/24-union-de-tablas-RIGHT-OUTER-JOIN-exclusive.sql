SELECT
    a.name as country,
    a.code as continent_code,
    b.name as continent_name
FROM
    country a
    RIGHT JOIN continent b ON a.continent = b.code
WHERE
    a.name IS NULL;