SELECT
    hire_date,
    MAKE_INTERVAL(
        YEARS := 2024 - EXTRACT(
            YEARS
            FROM
                hire_date
        ) :: INTEGER
    ) as manual,
    MAKE_INTERVAL(
        YEARS := DATE_PART('years', CURRENT_DATE)::INTEGER - EXTRACT(
            YEARS
            FROM
                hire_date
        ) :: INTEGER
    ) as computed
from
    employees
ORDER BY
    hire_date DESC;

SELECT
    hire_date,
    hire_date + INTERVAL '24 years'
FROM
    employees
ORDER BY
    hire_date ASC;

UPDATE
    employees
SET
    hire_date = hire_date + INTERVAL '24 years'