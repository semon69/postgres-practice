-- Active: 1709098687066@@127.0.0.1@5432@ph

/*
A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions. 
*/

-- Table-Level Events:
-- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events
-- Database Startup, Database Shutdown, Connection start and end etc
-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- [FOR EACH ROW]
-- EXECUTE FUNCTION function_name();
CREATE TABLE my_users (
    user_name VARCHAR(50), 
    email VARCHAR(100)
);

INSERT INTO my_users VALUES('Mezba', 'mezba@mail.com'), ('Mir', 'mir@mail.com');

SELECT * FROM my_users;

CREATE Table deleted_user_audit (user_name VARCHAR(50), createdAt TIMESTAMP);

SELECT * FROM deleted_user_audit;

CREATE or REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
        INSERT INTO deleted_user_audit VALUES(OLD.user_name, now());
        RETURN OLD;
    END
$$;

CREATE or REPLACE TRIGGER delete_user_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();


DELETE from my_users WHERE user_name = 'Mir';