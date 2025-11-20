create database shop;
use shop;

create table products(
	product_id int primary key,
	product_name varchar(255),
	price DECIMAL,
	stock_quantity int
);
    
create table customers(
	customer_id int primary key,
	customer_name varchar(255),
	city varchar(100)  
);

create table orders(
	order_id int primary key,
	order_date date,
	total_amount DECIMAL,
	customer_id int,
	foreign key (customer_id) references customers(customer_id)
);

select count(*) as total_products
from products;

select sum(total_amount) as total_revenue
from orders;

select avg(price) as average_price
from products;

select 
	max(price) as max_order_amount,
    min(price) as min_order_amount
from products;

select count(customer_id) as hanoi_customers_count
from customers
where city = 'Hà Nội';