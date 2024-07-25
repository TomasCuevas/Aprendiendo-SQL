(
    SELECT
        COUNT(*) as total,
        b.name as continent
    FROM
        country a
        INNER JOIN continent b ON a.continent = b.code
    WHERE
        b.name NOT LIKE '%America%'
    GROUP BY
        b.name
)
UNION
(
    SELECT
        COUNT(*) total,
        'America'
    FROM
        country a
        INNER JOIN continent b ON a.continent = b.code
    WHERE
        b.name LIKE '%America%'
)
ORDER BY
    total ASC;