create database instagram_db;

show databases;
use instagram_db;
CREATE TABLE users(
    user_id INT PRIMARY KEY,
    username VARCHAR(40) UNIQUE,
    full_name VARCHAR(50),
    email VARCHAR(50),
    password VARCHAR(50) NOT NULL,
    phone_number VARCHAR(14),
    bio TEXT,
    createdate DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users 
(user_id, username, full_name, email, password, phone_number, bio, createdate)
VALUES
(1,'ravi17','ravi','ravi@gmail.com','rav@123','1234567898','', '2026-04-17 11:37:50'),
(2,'dileep17','dileep','dileep@gmail.com','dip@123','1111111111','developer','2026-04-17 11:38:50'),
(3,'umesh17','umesh','umesh@gmail.com','um@123','123456788','developer','2026-04-17 11:39:50');

SELECT * FROM users;


create table posts(
	post_id int primary key,
    user_id int not null,
    caption text,
    image_url varchar(300) not null,
    likes_count int default 0,
    create_at timestamp default current_timestamp,
    foreign key(user_id) references users(user_id)
	);
    alter table users
    add column isverified boolean;
    
    alter table users
    modify column full_name varchar(150);
    select * from users;
    
    alter table users
    modify column phone_number varchar(20);
    
    alter table users
    change column bio biography text;
    
    alter table users
    drop column biography;
    
    alter table users 
    rename to user_name;
    
    set phone_number = '0000000000';
	where user_id=1;
	select * from user_name;
    
create table comments( 
	comment_id int primary key,
    post_id bigint not null,
    user_id int not null,
    comment_text varchar(300) not null,
    createat datetime default current_timestamp,
    foreign key (post_id) references posts(post_id),
    foreign key(user_id) references users(user_id)
    );
    
create table likes (
	like_id int primary key,
    post_id int not null,
    user_id int not null,
    likeat datetime default current_timestamp,
    foreign key (post_id) references posts(post_id),
    foreign key(user_id ) references users(user_id)
);    