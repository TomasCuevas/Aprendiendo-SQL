SELECT
    first_name,
    last_name,
    hire_date,
    CASE
        WHEN hire_date > now () - INTERVAL '1 year' THEN '1 año o menos'
        WHEN hire_date > now () - INTERVAL '3 year' THEN '1 a 3 años'
        WHEN hire_date > now () - INTERVAL '6 year' THEN '3 a 6 años'
        ELSE '+6 años'
    END as antiguedad
FROM
    employees
ORDER BY
    hire_date DESC;