-- Active: 1709098687066@@127.0.0.1@5432@ph
SELECT * from "user";

SELECT * from post;

SELECT username, title from post
    JOIN "user" on post.user_id = "user".id;

SELECT * from post
    LEFT JOIN "user" on post.user_id = "user".id;

SELECT * from post
    RIGHT JOIN "user" on post.user_id = "user".id;

SELECT * from post
    FULL JOIN "user" on post.user_id = "user".id;

INSERT INTO post (title, user_id) VALUES('test post', NULL);
