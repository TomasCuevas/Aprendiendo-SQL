SELECT
    *
FROM
    employees
WHERE
    hire_date > '1998-02-05'
ORDER BY
    hire_date ASC;

SELECT
    max(hire_date) as mas_nuevo,
    min(hire_date) as primer_empleado
from
    employees;

SELECT
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1992-02-05' AND '1997-01-05'
ORDER BY
    hire_date ASC;