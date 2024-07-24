ALTER TABLE
    country
ALTER COLUMN
    continent TYPE int4 USING continent :: integer;

ALTER TABLE
    country
ADD
    FOREIGN KEY (continent) REFERENCES continent(code);

DROP TABLE country_bk;