USE tech_tut_db;
-- 1.
--    Only run this if all tables exist
-- 2.
TRUNCATE users;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
                       id              int(10) NOT NULL AUTO_INCREMENT,
                       username        varchar(10) NOT NULL UNIQUE,
                       email           varchar(255) NOT NULL UNIQUE,
                       password        varchar(255) NOT NULL,
                       gh_url          varchar(400) UNIQUE,
                       profile_pix_url varchar(255) NOT NULL,
                       path            varchar(255) comment 'User''s current education or training path and focus',
                       PRIMARY KEY (id));
INSERT INTO users (username, email, password, gh_url, profile_pix_url, path)
VALUES ('bugs', 'bugs@toon.com', '1234', null, '/img/avatars/black-01.png', null),
       ('daffy', 'daffy@toon.com', '1234', null, '/img/avatars/blue-01.png', null),
       ('yosemite', 'yosemite@toon.com', '1234', null, '/img/avatars/brown-01.png', null)
;

-- 3
TRUNCATE tech_tut_reviews;
DROP TABLE IF EXISTS tech_tut_reviews;
CREATE TABLE Tech_Tut_Reviews (
                                  id              int(10) NOT NULL AUTO_INCREMENT,
                                  user_review_id  int(10) NOT NULL,
                                  user_review     varchar(555) NOT NULL,
                                  user_rating     int(10) NOT NULL,
                                  tut_url         varchar(255) NOT NULL,
                                  tut_thumb_url   varchar(255) NOT NULL,
                                  tut_description varchar(555) NOT NULL,
                                  tut_cost        double,
                                  review_title    varchar(255) NOT NULL,
                                  review_views    int(10),
                                  review_upvotes  int(10),
                                  PRIMARY KEY (id));

;
INSERT INTO tech_tut_reviews(user_review_id, user_review, user_rating, tut_url, tut_thumb_url, tut_description, tut_cost, review_title, review_views, review_upvotes)
VALUES (3,
        'I''m the meanest, roughest, toughest hombre that''s ever crossed the Rio Grande - and I ain''t o namby-bamby!',
        3,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'img/tut-thumbs/YouTube.png',
        'This was the best dag-gum tutorial on something or other...',
        null,
        'Review #1',
        null,
        null
       ),
       (2,
        'I''m not crazy, I just don''t give a darn! WOO HOO! WOO HOO!" "I''m so crazy I don''t know this isn''t possible',
        5,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'img/tut-thumbs/YouTube.png',
        'WOO HOO! WOO HOO!',
        4.99,
        'Review #2',
        null,
        null
       ),
       (1,
        'Do you happen to know what the penalty is for shooting a fricaseeing rabbit without a fricaseeing rabbit license?',
        1,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'img/tut-thumbs/YouTube.png',
        'It just goes to show ya that a one-eyed jack rabbit can beat a king',
        59.45,
        'Review #3',
        null,
        null
       )
;

-- 4
TRUNCATE profile_pixs;
DROP TABLE IF EXISTS profile_pixs;
CREATE TABLE profile_pixs (
                              id      int(10) NOT NULL AUTO_INCREMENT,
                              pix_url varchar(255) NOT NULL,
                              PRIMARY KEY (id));
INSERT INTO profile_pixs(pix_url)
VALUES ('01 url address here'),
       ('02 url address here'),
       ('03 url address here')
;

-- 5
TRUNCATE tut_cats;
DROP TABLE IF EXISTS tut_cats;
CREATE TABLE tut_cats (
                          id       int(10) NOT NULL AUTO_INCREMENT,
                          tut_cats varchar(155) NOT NULL UNIQUE,
                          PRIMARY KEY (id))
;
INSERT INTO tut_cats(tut_cats)
VALUES ('HTML'),
       ('CSS'),
       ('JavaScript'),
       ('Java')
;

-- 6
TRUNCATE user_profile_pixs;
DROP TABLE IF EXISTS user_profile_pixs;
CREATE TABLE user_profile_pixs (
                                   user_id        int(10) NOT NULL,
                                   profile_pix_id int(10) NOT NULL);
INSERT INTO user_profile_pixs (user_id, profile_pix_id)
VALUES (1, 1),
       (2, 2),
       (3, 3)
;

-- 7
TRUNCATE review_cats;
DROP TABLE IF EXISTS review_cats;
CREATE TABLE review_cats (
                             ttr_id      int(10) NOT NULL,
                             tut_cats_id int(10) NOT NULL);
INSERT INTO review_cats (ttr_id, tut_cats_id)
VALUES (1, 1),
       (2, 2),
       (3, 3)
;

