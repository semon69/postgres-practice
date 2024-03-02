-- Active: 1709098687066@@127.0.0.1@5432@ph
SELECT * FROM employees;

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
as 
$$
    SELECT count(*) from employees;
$$

SELECT emp_count();


CREATE Function delete_emp()
RETURNS void
LANGUAGE SQL
as
$$
    DELETE FROM employees WHERE employee_id = 30
$$

CREATE Function delete_emp_with_p(p_emp_id  INT)
RETURNS void
LANGUAGE SQL
as
$$
    DELETE FROM employees WHERE employee_id = p_emp_id
$$

SELECT delete_emp();

SELECT delete_emp_with_p(29);


CREATE or REPLACE Procedure remove_emp_id()
LANGUAGE plpgsql
AS
$$
    BEGIN
        DELETE FROM employees WHERE employee_id = 27;
        RAISE NOTICE 'Remove successfull';
    END
$$


call remove_emp_id()