SELECT
    *
FROM
    continent
WHERE
    name LIKE '%America%'
UNION
SELECT
    code,
    name
FROM
    continent
WHERE
    code in (1, 3)
ORDER BY
    code ASC;