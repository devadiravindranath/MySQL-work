USE instagram_db;

SELECT * FROM user_name;

SET SQL_SAFE_UPDATES = 0;

UPDATE user_name
SET phone_number = '0000000000'
WHERE user_id = 2;

SELECT * FROM user_name;
delete from users 
where username='dileep17'