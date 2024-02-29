-- Active: 1709098687066@@127.0.0.1@5432@ph

SELECT * FROM student;

SELECT country, count(*) from student
    GROUP BY country;

SELECT country, count(*), avg(age) from student
    GROUP BY country
        HAVING avg(age) > 27;


SELECT extract(year from dob) as birth_year, count(*)
    FROM student
        GROUP BY birth_year;