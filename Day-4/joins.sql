CREATE DATABASE join_practice;
USE join_practice;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100),
    city VARCHAR(100)
);


CREATE TABLE posts (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    caption VARCHAR(255),
    foreign key (user_id) references users(user_id)
);



INSERT INTO users (username, city) VALUES
('rahul', 'Hyderabad'),
('sneha', 'Bangalore'),
('arjun', 'Chennai'),
('meena', 'Mumbai'),
('kiran', 'Delhi'),
('anita', 'Pune'),
('vikram', 'Kolkata'),
('divya', 'Jaipur'),
('rohit', 'Ahmedabad'),
('pooja', 'Lucknow');

select * from users;



INSERT INTO posts (user_id, caption) VALUES
(1, 'Morning workout'),
(2, 'Learning SQL joins'),
(3, 'Data analytics journey'),
(1, 'Weekend trip'),
(4, 'Office presentation'),
(5, 'Startup ideas'),
(7, 'Test post without valid user'),
(3, 'Python practice'),
(7, 'Cloud computing basics'),
(8, 'Another invalid user post');

select * from posts;

select users.username,posts.caption from users inner join posts on users.user_id = posts.user_id;

select users.username,posts.caption from users,posts where users.user_id = posts.user_id; -- equi joins

select users.username,posts.caption from users,posts where users.user_id <> posts.user_id; -- non equi joins

select * from users natural join posts; -- natural joins

select users.username,posts.caption from users left join posts on users.user_id = posts.user_id;

select users.username,posts.caption from users right join posts on users.user_id = posts.user_id;

select users.username,posts.caption from users left join posts on users.user_id = posts.user_id
union

select users.username,posts.caption from users right join posts on users.user_id = posts.user_id;

SELECT users.username, posts.caption
FROM users
INNER JOIN posts
ON users.user_id = posts.user_id;

SELECT users.username, posts.caption
FROM users
RIGHT JOIN posts;

SELECT users.username, posts.caption
FROM users
LEFT JOIN posts
ON users.user_id = posts.user_id;

SELECT users.username
FROM users
LEFT JOIN posts
ON users.user_id = posts.user_id
WHERE posts.post_id IS NULL;

SELECT *
FROM POSTS
LEFT JOIN USERS
ON users.user_id = posts.user_id;

SELECT * FROM USERS
RIGHT JOIN POSTS 
ON USERS.USER_ID = POSTS.USER_ID;


SELECT * FROM USERS
LEFT JOIN POSTS
ON USERS.USER_ID = NULL;


-- natural join --> automatic matching between the tables
-- self join -->joins with it self 
-- cross join --> combination of all joins