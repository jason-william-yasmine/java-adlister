USE tech_tut_db;
-- 1.
--    Only run this if all tables exist
-- 2.
TRUNCATE users;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
                       id              int(10) NOT NULL AUTO_INCREMENT,
                       username        varchar(255) NOT NULL UNIQUE,
                       email           varchar(255) NOT NULL UNIQUE,
                       password        varchar(255) NOT NULL,
                       avatar          varchar(255),
                       PRIMARY KEY (id));
INSERT INTO users (username, email, password, avatar)
VALUES ('bugs', 'bugs@toon.com', '1234', '/img/avatars/black-01.png'),
       ('daffy', 'daffy@toon.com', '1234', '/img/avatars/blue-01.png'),
       ('yosemite', 'yosemite@toon.com', '1234', '/img/avatars/brown-01.png')
;
-- 3.
TRUNCATE Reviews;
DROP TABLE IF EXISTS Reviews;
CREATE TABLE reviews (
                         id                int(10) NOT NULL AUTO_INCREMENT,
                         uid               int(10) NOT NULL,
                         title             varchar(255) NOT NULL,
                         review            MEDIUMTEXT NOT NULL,
                         rating            int(10) NOT NULL,
                         tutorialURL       varchar(255) NOT NULL,
                         thumb             varchar(255) NOT NULL,
                         cat               varchar(255),
                         PRIMARY KEY (id));
;

-- 3. Seed Table:
INSERT INTO reviews(uid, title, review, rating, tutorialURL, thumb, cat )
VALUES (1,
        'Review #1',
        'Comments on tutorial!!',
        3,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/YouTube.png',
        'html'
       ),
       (2,
        'Review #2',
        'Comments on tutorial!',
        4,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/YouTube.png',
        'css'
       ),
       (3,
        'Review #3',
        'Comments on tutorial!',
        1,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/YouTube.png',
        'java'
       )
;
-- 4
TRUNCATE tut_cats;
DROP TABLE IF EXISTS tut_cats;
CREATE TABLE tut_cats (
                          id       int(10) NOT NULL AUTO_INCREMENT,
                          tut_cats varchar(155) NOT NULL UNIQUE,
                          PRIMARY KEY (id));
INSERT INTO tut_cats(tut_cats)
VALUES ('HTML'),
       ('CSS'),
       ('JavaScript'),
       ('Java')
;
-- 5
TRUNCATE review_cats;
DROP TABLE IF EXISTS review_cats;
CREATE TABLE review_cats (
                             tutID      int(10) NOT NULL,
                             catsID     int(10) NOT NULL);
INSERT INTO review_cats (tutID, catsID)
VALUES (1, 1),
       (2, 2),
       (3, 3)
;