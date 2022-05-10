USE tech_tut_db;

-- REMEMBER: Placing the cursor with a SQL statement block and entering in
-- "Command + Enter", then "Enter" again will allow you to run that SQL statement

-- 1. The following two statements will allow us to drop and "zero" out our tables if they exist:
TRUNCATE users;

DROP TABLE IF EXISTS users;

-- 2. Build table:
CREATE TABLE users (
       id              int(10) NOT NULL AUTO_INCREMENT,
       username        varchar(255) NOT NULL UNIQUE,
       email           varchar(255) NOT NULL UNIQUE,
       password        varchar(255) NOT NULL,
       avatar          varchar(255),
       PRIMARY KEY (id));

-- 3. Seed Table:
INSERT INTO users (username, email, password, avatar)
VALUES ('bugs', 'bugs@toon.com', '1234', '/img/avatars/black-01.png'),
       ('daffy', 'daffy@toon.com', '1234', '/img/avatars/blue-01.png'),
       ('yosemite', 'yosemite@toon.com', '1234', '/img/avatars/brown-01.png')
;

-- 4. Checks
DESC users;

SHOW CREATE TABLE users;

SELECT * FROM users;