CREATE TABLE regex_practice (
id INT,
full_text VARCHAR(200),
email VARCHAR(100),
phone VARCHAR(30),
mixed_value VARCHAR(100)
);

SELECT REGEXP_SUBSTR(mixed_value,'^[0-9]+')
FROM regex_practice;

SELECT REGEXP_SUBSTR(mixed_value,'[0-9]+$')
FROM regex_practice;

SELECT REGEXP_SUBSTR(email,'^[^@]+')
FROM regex_practice;

SELECT REGEXP_SUBSTR(email,'@(.+)')
FROM regex_practice;

SELECT REGEXP_SUBSTR(phone,'[0-9]+')
FROM regex_practice;