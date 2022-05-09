USE tech_tut_db;

-- REMEMBER: Placing the cursor with a SQL statement block and entering in
-- "Command + Enter", then "Enter" again will allow you to run that SQL statement

-- 1. The following two statements will allow us to drop and "zero" out our tables if they exist:
TRUNCATE tech_tut_reviews;

DROP TABLE IF EXISTS tech_tut_reviews;

-- 2. Build table:
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

-- 3. Seed Table:
INSERT INTO tech_tut_reviews(user_review_id, user_review, user_rating, tut_url, tut_thumb_url, tut_description, tut_cost, review_title, review_views, review_upvotes)
VALUES (3,
        'I''m the meanest, roughest, toughest hombre that''s ever crossed the Rio Grande - and I ain''t o namby-bamby!',
        3,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'img/tut-thumbs/YouTube.png',
        'This was the best dag-gum tutorial on something or other...',
        5.34,
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
        5.99,
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
        59.55,
        'Review #3',
        null,
        null
       )
;

-- 4. Checks
DESC tech_tut_reviews;

SHOW CREATE TABLE tech_tut_reviews;

SELECT * FROM tech_tut_reviews;

