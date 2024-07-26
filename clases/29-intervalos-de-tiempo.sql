SELECT
    MAX(hire_date),
    MAX(hire_date) + INTERVAL '1 day' as day,
    MAX(hire_date) + INTERVAL '1 month' as month,
    MAX(hire_date) + INTERVAL '1 year' as year,
    MAX(hire_date) + INTERVAL '1 year' + INTERVAL '1 month' + INTERVAL '1 day' as year_month_day,
    MAKE_INTERVAL(YEARS := DATE_PART('year', NOW())::INTEGER + 5),
    MAX(hire_date) + MAKE_INTERVAL(YEARS := 14)
from
    employees;