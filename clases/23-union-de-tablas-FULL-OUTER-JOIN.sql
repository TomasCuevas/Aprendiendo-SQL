SELECT
    a.name as country,
    a.continent as continent_code,
    b.name as continent_name
FROM
    country a
    FULL OUTER JOIN continent b ON a.continent = B.code
ORDER BY
    a.name ASC;