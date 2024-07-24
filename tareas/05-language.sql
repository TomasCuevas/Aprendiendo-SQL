-- Tarea con countryLanguage

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS language_code_seq;

-- Table Definition
CREATE TABLE "public"."language" (
    "code" int4 NOT NULL DEFAULT 	nextval('language_code_seq'::regclass),
    "name" text NOT NULL,
    PRIMARY KEY ("code")
);

-- Crear una columna en countrylanguage
ALTER TABLE
    countrylanguage
ADD
    COLUMN languagecode varchar(3);


-- Empezar con el select para confirmar lo que vamos a actualizar
SELECT
    DISTINCT language
FROM
    countrylanguage
ORDER BY
    language ASC;

SELECT
    a.language,
    (
        SELECT
            code
        FROM
            language b
        WHERE
            b.name = a.language
    )
FROM
    countrylanguage a;

-- Actualizar todos los registros
INSERT INTO
    language (name)
SELECT
    DISTINCT language
FROM
    countrylanguage
ORDER BY
    language ASC;

UPDATE
    countrylanguage a
SET
    languagecode = (
        SELECT
            code
        FROM
            language b
        WHERE
            b.name = a.language
    );


-- Cambiar tipo de dato en countrylanguage - languagecode por int4
ALTER TABLE
    countrylanguage
ALTER COLUMN
    languagecode TYPE int4 USING languagecode :: integer;

-- Crear el forening key y constraints de no nulo el language_code
ALTER TABLE
    countrylanguage
ADD
    FOREIGN KEY(languagecode) REFERENCES language(code);

-- Revisar lo creado