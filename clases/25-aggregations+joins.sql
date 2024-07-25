(
    SELECT
        count(*),
        b.name
    FROM
        country a
        INNER JOIN continent b ON a.continent = b.code
    GROUP BY
        b.name
)
UNION
(
    SELECT
        0,
        b.name
    FROM
        country a
        RIGHT JOIN continent b ON a.continent = b.code
    WHERE
        a.continent IS NULL
)
ORDER BY
    count DESC;