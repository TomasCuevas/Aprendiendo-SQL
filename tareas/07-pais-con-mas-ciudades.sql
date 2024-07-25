SELECT
    count(*) as total,
    b.name as country
FROM
    city a
    INNER JOIN country b ON a.countrycode = b.code
GROUP BY
    b.name
ORDER BY
    total DESC
LIMIT
    1