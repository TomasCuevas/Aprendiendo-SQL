SELECT
    COUNT(*),
    SUBSTRING(email, POSITION('@' in email) + 1) as domain
FROM
    users
GROUP BY
    domain
ORDER BY
    COUNT(*) DESC