-- Active: 1709098687066@@127.0.0.1@5432@ph


SHOW timezone;

SELECT now()

CREATE TABLE timez (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)

INSERT INTO timez VALUES('2024-02-01 10:12:40', '2024-02-01 10:12:40')

SELECT * FROM timez


SELECT now()

SELECT CURRENT_DATE

SELECT now()::date;


SELECT to_char(now(), 'dd/mm/yyyy');

SELECT CURRENT_DATE - INTERVAL '1 year 1 month 10 days';


SELECT age(now(), '2001/12/28');

SELECT extract(month from '2001/12/28'::date)