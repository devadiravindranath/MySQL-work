CREATE DATABASE flipkart;
use flipkart;

CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    createat DATE,
    isavailable BOOLEAN
    );
    
INSERT INTO Products VALUES
(1, 'iPhone 15', 'Electronics', 80000, 10, '2024-01-10', TRUE),
(2, 'Samsung S24', 'Electronics', 75000, 15, '2024-02-15', TRUE),
(3, 'Dell Laptop', 'Electronics', 65000, 5, '2023-12-01', TRUE),
(4, 'HP Laptop', 'Electronics', 60000, 7, '2023-11-20', TRUE),
(5, 'Office Chair', 'Furniture', 7000, 20, '2024-03-05', TRUE),
(6, 'Study Table', 'Furniture', 12000, 8, '2024-03-12', TRUE),
(7, 'Water Bottle', 'Accessories', 500, 50, '2024-01-01', TRUE),
(8, 'Backpack', 'Accessories', 1500, 30, '2024-02-01', TRUE),
(9, 'Smart Watch', 'Electronics', 15000, 12, '2024-04-01', TRUE),
(10, 'Bluetooth Speaker', 'Electronics', 3000, 25, '2024-04-10', TRUE),
(11, 'Notebook', 'Stationery', 50, 100, '2024-01-05', TRUE),
(12, 'Pen Pack', 'Stationery', 100, 200, '2024-01-08', TRUE),
(13, 'Gaming Mouse', 'Electronics', 2000, 18, '2023-10-10', TRUE),
(14, 'Keyboard', 'Electronics', 2500, 22, '2023-09-15', TRUE),
(15, 'Monitor', 'Electronics', 18000, 6, '2023-08-20', TRUE),
(16, 'Sofa', 'Furniture', 35000, 3, '2023-07-01', TRUE),
(17, 'Dining Table', 'Furniture', 40000, 2, '2023-06-10', FALSE),
(18, 'Headphones', 'Electronics', 5000, 14, '2024-05-01', TRUE),
(19, 'Coffee Mug', 'Accessories', 300, 60, '2024-05-05', TRUE),
(20, 'Tablet', 'Electronics', 30000, 9, '2024-06-01', TRUE);

select * from products;
select product_name,price from products;
select category , stock from products;

select * from products where category = 'electronics'; 

select * from products where price = 5000;

select * from products where stock < 50;

select * from products where price between 100 and 500; 

select product_name as product_items,price,stock from products;

select * from products where product_name like 's%';

select * from products where product_name like '%a%';


select * from products where category in ('accessories','furniture');

select * from products where category not in ('accessories','furniture');

select * from products where price in ('75000');

select * from products order by price asc;

select * from products order by stock desc;

select distinct category from products;

select distinct price from products;

select * from products limit 5;

select sum(price) as totalvalue from products;

select avg(price) as averagevalue from products;

select max(price) as maximumvalue from products;

select min(price) as minimumvalue from products;

select category ,count(category) as electronics_freq from products where category ='electronics';

select count(*) as total_rows from products;

select product_name, price ,price + 10000 as increased_price from products;

select product_name, price ,price  - 100 as dicreased_price from products;

select product_name, price ,price * 3 as multiplied_price from products;

select product_name, price ,price / 2 as increased_price from products;

select * from products where category = 'furniture';
        --  NOT equal  <> --
select * from products where category <> 'electronics';

select * from products where price > 20000;

-- logical operations -- 

-- and
select * from products where price > 1000 and stock >5;
-- or 
 
select * from products where category='furniture'  or  category = 'stationary';
-- not 

select * from products where not category = 'electronics';

select * from products where category = "electronics";

select * from products where price between 1000 and 5000;

select * from products where price > 10000;
select  category,stock >5 from products;













    