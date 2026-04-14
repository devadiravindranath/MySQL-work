CREATE DATABASE swiggy;
USE swiggy;


-- Users (Customers)
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

-- Restaurants
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(50),
    city VARCHAR(50)
);

-- Orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    restaurant_id INT,
    amount INT
);
-- Ratings
CREATE TABLE ratings (
    rating_id INT PRIMARY KEY,
    min_amount INT,
    max_amount INT,
    category VARCHAR(20)
);

-- ==============================
-- INSERT DATA
-- ==============================

INSERT INTO users VALUES
(1, 'Ravi', 'Hyderabad'),
(2, 'Sita', 'Vijayawada'),
(3, 'Arjun', 'Hyderabad'),
(4, 'Meena', 'Chennai');

INSERT INTO restaurants VALUES
(101, 'Biryani House', 'Hyderabad'),
(102, 'Pizza Hub', 'Vijayawada'),
(103, 'Food Corner', 'Delhi');

INSERT INTO orders VALUES
(1001, 1, 101, 250),
(1005, 2, 102, 500),
(1003, 1, 102, 300),
(1004, 3, 105, 200);

INSERT INTO orders VALUES
(1006, 2, 101, 450),
(1007, 4, 103, 600);

INSERT INTO ratings VALUES
(1, 0, 300, 'Low'),
(2, 301, 600, 'Medium'),
(3, 601, 1000, 'High');


-- syntax for the inner join
-- select t1.col,t2.col....tn.col
-- table1 t1
-- inner join
-- on t1.col=t2.col
-- inner join 
-- on t2.col=t3.col


-- 1inner join
select u.name,r.restaurant_name,o.amount
from users u
INNER JOIN orders o ON u.user_id = o.user_id
INNER JOIN restaurants r ON o.restaurant_id = r.restaurant_id;

-- 2 left join
SELECT u.name , o.order_id
from users u
left join orders o on u.user_id = o.user_id;

-- 3 right join

SELECT u.name , o.order_id
from users u
right join orders o on u.user_id = o.user_id;

-- 4 full join
select u.name, o.order_id
  from users u 
  left join orders o on u.user_id = o.user_id;
  
  -- 5 UNION
  select u.name, o.order_id
  from users u 
  right join orders o on u.user_id = o.user_id;
  
  -- 6 EQUI JOIN
  select u.name, o.order_id
  from users u, orders o
  where u.user_id <> o.user_id;
  
   -- non EQUI JOIN
   
   SELECT o.order_id, o.amount, r.category
FROM orders o
JOIN ratings r
ON o.amount BETWEEN r.min_amount AND r.max_amount;

-- 7 natural join
select * from users
natural JOIN orders;

select * from restaurants
natural join orders;

-- 8 self join

select u1.name as Customer1,u2.name as Customer2,u1.city
from users u1
join users u2
on u1.city = u2.city AND u1.user_id <> u2.user_id;

-- 9 cross join

select u.name , r.restaurant_name
from users u
cross join restaurants r;


  




