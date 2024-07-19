SELECT
    name,
    SUBSTRING(name, 0, POSITION(' ' in name)) as firstname,
    SUBSTRING(name, POSITION(' ' in name) + 1) as lastname,
    TRIM(SUBSTRING(name, POSITION('' in name))) as trimmed_lastname
FROM
    users;

UPDATE users
SET
    firstname = SUBSTRING(name, 0, POSITION(' ' in name)),
    lastname = SUBSTRING(name, POSITION(' ' in name) + 1);

SELECT
    *
FROM
    users;