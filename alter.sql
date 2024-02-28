-- Active: 1709098687066@@127.0.0.1@5432@ph
SELECT * FROM person2

ALTER TABLE person2 
    ADD COLUMN user_name VARCHAR(50) DEFAULT 'user69' NOT NULL


ALTER TABLE person2 
    DROP COLUMN user_name


ALTER TABLE person2 
    RENAME COLUMN age to person_age


ALTER TABLE person2
    ALTER COLUMN email TYPE VARCHAR(50)


ALTER TABLE person2
    ALTER COLUMN person_age set NOT NULL

-- INSERT INTO person2 VALUES(7, 'dd@gmail.com', 23, 'admin69')