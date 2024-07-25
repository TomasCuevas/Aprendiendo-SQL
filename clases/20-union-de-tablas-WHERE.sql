SELECT
    a.name as country,
    b.name as continent
FROM
    country a,
    continent b
WHERE
    a.continent = b.code
ORDER BY
    a.name ASC;