UPDATE country a
SET
    continent = (
        SELECT
            code
        FROM
            continent b
        WHERE
            b.name = a.continent
    )