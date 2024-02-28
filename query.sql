-- Active: 1709098687066@@127.0.0.1@5432@ph
CREATE TABLE student (
    student_id SERIAL PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, age INT, grade CHAR(2), course VARCHAR(50), email VARCHAR(100), dob DATE, blood_group VARCHAR(5), country VARCHAR(50)
)

INSERT INTO
    student (
        first_name, last_name, age, grade, course, email, dob, blood_group, country
    )
VALUES (
        'John', 'Doe', 25, 'A', 'Mathematics', 'john.doe@example.com', '1999-05-15', 'O+', 'USA'
    ),
    (
        'Jane', 'Smith', 28, 'B', 'Physics', 'jane.smith@example.com', '1996-10-20', 'A-', 'Canada'
    ),
    (
        'Alice', 'Johnson', 22, 'C', 'Chemistry', 'alice.johnson@example.com', '2000-03-10', 'B+', 'UK'
    ),
    (
        'Bob', 'Brown', 30, 'A', 'Biology', 'bob.brown@example.com', '1992-07-25', 'AB-', 'Australia'
    ),
    (
        'Emily', 'Williams', 27, 'B', 'History', 'emily.williams@example.com', '1995-09-18', 'O-', 'Germany'
    ),
    (
        'Michael', 'Anderson', 29, 'A', 'Computer Science', 'michael.anderson@example.com', '1993-12-05', 'A+', 'France'
    ),
    (
        'Sarah', 'Martinez', 26, 'B', 'Literature', 'sarah.martinez@example.com', '1996-02-28', 'B-', 'Spain'
    ),
    (
        'David', 'Garcia', 24, 'C', 'Geography', 'david.garcia@example.com', '1998-11-08', 'AB+', 'Italy'
    ),
    (
        'Jessica', 'Lopez', 23, 'A', 'Psychology', 'jessica.lopez@example.com', '1999-08-12', 'O+', 'Japan'
    ),
    (
        'William', 'Rodriguez', 31, 'B', 'Sociology', 'william.rodriguez@example.com', '1991-04-30', 'A-', 'Brazil'
    ),
    (
        'Olivia', 'Hernandez', 28, 'C', 'Anthropology', 'olivia.hernandez@example.com', '1995-06-22', 'B+', 'Mexico'
    ),
    (
        'James', 'Gonzalez', 25, 'A', 'Economics', 'james.gonzalez@example.com', '1999-01-17', 'O-', 'Russia'
    ),
    (
        'Sophia', 'Perez', 22, 'B', 'Political Science', 'sophia.perez@example.com', '2000-07-03', 'A+', 'China'
    ),
    (
        'Benjamin', 'Sanchez', 29, 'C', 'English', 'benjamin.sanchez@example.com', '1992-09-11', 'AB-', 'India'
    ),
    (
        'Ava', 'Ramirez', 27, 'A', 'Art', 'ava.ramirez@example.com', '1994-03-25', 'B-', 'South Africa'
    ),
    (
        'Mason', 'Torres', 26, 'B', 'Music', 'mason.torres@example.com', '1995-12-07', 'AB+', 'Argentina'
    ),
    (
        'Charlotte', 'Nguyen', 23, 'C', 'Dance', 'charlotte.nguyen@example.com', '1998-02-14', 'O+', 'Netherlands'
    ),
    (
        'Ethan', 'Ng', 30, 'A', 'Film', 'ethan.ng@example.com', '1992-10-29', 'A-', 'Sweden'
    ),
    (
        'Amelia', 'Kim', 25, 'B', 'Theater', 'amelia.kim@example.com', '1998-05-03', 'B+', 'Switzerland'
    ),
    (
        'Noah', 'Chen', 28, 'C', 'Photography', 'noah.chen@example.com', '1993-06-19', 'O-', 'Norway'
    );


SELECT * FROM student ORDER BY age ASC

SELECT DISTINCT blood_group FROM student

SELECT * FROM student
    WHERE  age < 25 and course = 'Dance'