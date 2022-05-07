USE tech_tut_db;

-- REMEMBER: Placing the cursor with a SQL statement block and entering in
-- "Command + Enter", then "Enter" again will allow you to run that SQL statement

-- 1. The following two statements will allow us to drop and "zero" out our tables if they exist:
TRUNCATE user_profile_pixs;

DROP TABLE IF EXISTS user_profile_pixs;

-- 2. Build table:
CREATE TABLE user_profile_pixs (
        user_id        int(10) NOT NULL,
        profile_pix_id int(10) NOT NULL);

-- 3. Seed Table
INSERT INTO user_profile_pixs (user_id, profile_pix_id)
VALUES (1, 1),
       (2, 2),
       (3, 3)
;

-- 4. Checks
DESC user_profile_pixs;

SHOW CREATE TABLE user_profile_pixs;

SELECT * FROM user_profile_pixs;