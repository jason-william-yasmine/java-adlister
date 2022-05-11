USE db;

-- REMEMBER: Placing the cursor with a SQL statement block and entering in
-- "Command + Enter", then "Enter" again will allow you to run that SQL statement

-- 1. The following two statements will allow us to drop and "zero" out our tables if they exist:
TRUNCATE reviews;

DROP TABLE IF EXISTS reviews;

-- 2. Build table:
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

-- 4. Checks
DESC reviews;

SHOW CREATE TABLE reviews;

SELECT * FROM reviews;

