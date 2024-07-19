SELECT
    *
FROM
    (
        SELECT
            COUNT(*),
            SUBSTRING(email, POSITION('@' in email) + 1) as domain,
            'Tomas' as name,
            24 as age
        FROM
            users
        GROUP BY
            domain
        HAVING
            count(*) > 1
        ORDER BY
            COUNT(*) DESC
    )