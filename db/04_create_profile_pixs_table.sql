USE tech_tut_db;

-- REMEMBER: Placing the cursor with a SQL statement block and entering in
-- "Command + Enter", then "Enter" again will allow you to run that SQL statement

-- 1. The following two statements will allow us to drop and "zero" out our tables if they exist:
TRUNCATE profile_pixs;

DROP TABLE IF EXISTS profile_pixs;

-- 2. Build table:
CREATE TABLE profile_pixs (
      id      int(10) NOT NULL AUTO_INCREMENT,
      pix_url varchar(255) NOT NULL,
      PRIMARY KEY (id));

-- 3. Seed Table:
INSERT INTO profile_pixs(pix_url)
VALUES ('01 url address here'),
       ('02 url address here'),
       ('03 url address here')
;

-- 4. Checks
DESC profile_pixs;

SHOW CREATE TABLE profile_pixs;

SELECT * FROM profile_pixs;