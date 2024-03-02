-- Active: 1709098687066@@127.0.0.1@5432@ph
SELECT * from employees;


CREATE VIEW avg_salary
AS
SELECT department_name, avg(salary) as salary from employees GROUP BY department_name;

SELECT * FROM avg_salary;


CREATE View name_with_R
AS
SELECT employee_name, salary, department_name from  employees 
    WHERE department_name in (SELECT department_name from employees WHERE department_name LIKE '%R%');


SELECT * FROM name_with_R;