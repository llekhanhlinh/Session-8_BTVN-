create database Hieuquakinhdoanh;
use Hieuquakinhdoanh;

create table products(
	product_id int primary key,
	roduct_name varchar(150),
	category varchar(100),
	price decimal
);

create table orders(
	order_id int primary key,
	customer_id int,
	order_date date,
	total_amount decimal
);

select 
	category, 
	count(*) as number_of_products
from products
group by category;

select
	customer_id, 
    sum(total_amount) as total_spent
from orders
group by customer_id;

select 
	category,
	count(*) as product_count,
	avg(price) as avg_price,
	max(price) as max_price,
	min(price) as min_price
from products
group by category;

select 
	customer_id, 
    sum(total_amount) as total_spent
from orders
group by customer_id
having sum(total_amount) > 1000;

select
	category, 
    count(*) as product_count
from products
group by category
having count(*) > 5;

select
	customer_id,
    sum(total_amount) as total_spent
from orders
group by customer_id
order by total_spent desc
limit 3;