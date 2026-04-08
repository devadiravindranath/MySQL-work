use flipkart;
-- logical operations -- 

-- and
select * from products where price > 1000 and stock >5;
-- or 
 
select * from products where category='furniture'  or  category = 'stationary';
-- not 

select * from products where not category = 'electronics';

-- bit wise operations
-- and

select 10 & 6 as bitwiseAND;

-- or

select 10 | 6 as bitwiseOR;

-- xor 
select 10 ^ 6 as bitwiswXor;

-- not 
select ~10 as bitwiseNOT;

-- left shift
select 5<<1 as bitwiseSHIFT;

-- right shift

select 20>>2 as rightshift;

-- assignment operator

set @total :=100;
select @total;
select @total as assignedvalue;

-- null values
insert into products(product_id,product_name) value(21,"demo");

-- is null (demo)

select * from products 
where category is null;

-- is not null

select * from products
where category is not null;

-- group by ----

select category,avg(price) as avg_price from products
group by category;

SELECT * FROM PRODUCTS;
SELECT CATEGORY,SUM(STOCK) AS SUM_STOCK FROM PRODUCTS
GROUP BY CATEGORY;

select category , sum(price ) as total_price
from products
group by category;

select category ,count(*) as productcount
from products
group by category;

-- having

-- ' where is for rows' and 'having is for groups(filtering the rows)'

select category,avg(price) as avg_price from products
group by category having avg_price > 1000;

SELECT CATEGORY,SUM(PRICE) AS TOTAL_PRICE FROM PRODUCTS GROUP BY CATEGORY;

select category , sum(price ) as total_price
from products
group by category having total_price>50;

SELECT CATEGORY, SUM(PRICE) AS TOTAL_PRICE FROM PRODUCTS GROUP BY CATEGORY HAVING TOTAL_PRICE >0;

select category ,count(*) as productcount
from products
group by category having productcount >4;

SELECT CATEGORY,AVG(PRICE) AS AVG_PRICE FROM PRODUCTS;

SELECT PRICE,SUM(STOCK) AS SUM_STOCK FROM PRODUCTS GROUP BY PRICE;

SELECT * FROM PRODUCTS WHERE STOCK > 10;




