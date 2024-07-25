-- ¿Quiero saber los idiomas oficiales que se hablan por continente?
SELECT DISTINCT
    a."language",
    c."name" as continent
FROM
    countrylanguage a
    INNER JOIN country b ON a.countrycode = b.code
    INNER JOIN continent c ON b.continent = c.code
WHERE
    a.isofficial IS TRUE
ORDER BY
    continent DESC;

-- ¿Cuantos idiomas oficiales se hablan por continente?
SELECT
    COUNT(*) as total,
    continent
FROM
    (
        SELECT DISTINCT
            a."language",
            c."name" as continent
        FROM
            countrylanguage a
            INNER JOIN country b ON a.countrycode = b.code
            INNER JOIN continent c ON b.continent = c.code
        WHERE
            a.isofficial IS TRUE
    ) as totales
GROUP BY
    continent
ORDER BY
    total DESC;