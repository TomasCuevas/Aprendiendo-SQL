-- ¿Cuál es el idioma (y código del idioma) oficial más hablado por diferentes países en Europa?
SELECT
    COUNT(*) as total,
    b.language as language,
    b.languagecode as language_code
FROM
    country a
    INNER JOIN countrylanguage b ON a.code = b.countrycode
WHERE
    b.isofficial IS TRUE
    AND a.continent = 5
GROUP BY
    language,
    language_code
ORDER BY
    total DESC
LIMIT
    1;

-- Listado de todos los países cuyo idioma oficial es el más hablado de Europa 
-- (no hacer subquery, tomar el código anterior)
SELECT
    a.name as country
from
    country a
    INNER JOIN countrylanguage b ON a.code = b.countrycode
WHERE
    b.languagecode = 135
    AND b.isofficial IS TRUE
    AND a.continent = 5;