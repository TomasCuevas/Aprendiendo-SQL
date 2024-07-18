SELECT
    id,
    UPPER(name) as upper_name,
    LOWER(name) as lower_name,
    LENGTH(name) as length,
    name,
    CONCAT(id, '-', name),
    '*' || id || '-' || name || '*' as barcode
FROM
    users;