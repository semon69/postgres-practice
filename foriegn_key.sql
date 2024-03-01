-- Active: 1709098687066@@127.0.0.1@5432@ph
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete CASCADE
);

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);


SELECT * FROM "user";

SELECT * FROM post;


INSERT INTO post (title, user_id) VALUES('ami tomake vlobasi', NULL)

ALTER TABLE post
    alter COLUMN user_id set not null

DROP TABLE "user";

DROP TABLE post;


DELETE FROM "user" WHERE id = 4;