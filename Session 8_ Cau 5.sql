create database Hieusuatbanhang;
use Hieusuatbanhang;

CREATE TABLE Sales (

    transaction_id INT,

    transaction_date DATE,

    customer_id INT,

    total_amount DECIMAL(10, 2)

);

insert into Sales(transaction_id, transaction_date, customer_id, total_amount)
values 
(101, '2023-10-02', 21, 75000.00),

(102, '2023-10-02', 35, 120000.00),

(103, '2023-10-03', 42, 350000.00),

(104, '2023-10-05', 21, 55000.00),

(105, '2023-10-07', 50, 210000.00),

(106, '2023-10-10', 35, 85000.00),

(107, '2023-10-11', 61, 450000.00),

(108, '2023-10-15', 21, 150000.00),

(109, '2023-10-18', 73, 95000.00),

(110, '2023-10-20', 42, 25000.00),

(111, '2023-10-22', 50, 320000.00),

(112, '2023-10-25', 21, 110000.00),

(113, '2023-10-27', 88, 180000.00),

(114, '2023-10-29', 35, 65000.00),

(115, '2023-10-30', 91, 295000.00);

-- 1. Tổng quan về Doanh thu
select sum(total_amount) as total_revenue
from Sales;

select count(*) as total_transactions
from Sales;
/*
- Tổng doanh thu trong tháng là 2585000.00.
- Có tất cả 15 giao dịch đã được thực hiện.
*/

-- 2. Phân tích Giá trị Giao dịch
select avg(total_amount) as average_transaction_value
from Sales;

select max(total_amount) as highest_transaction_value
from Sales;

select min(total_amount) as lowest_transaction_value
from Sales;

/*
- Giá trị hóa đơn trung bình của một giao dịch là 172333.333333.
- Giá trị hóa đơn cao nhất là 450000.00.
- Giá trị hóa đơn thấp nhất là 25000.00.
*/

-- 3. Phân tích Hoạt động Bán hàng
select min(transaction_date) as first_transaction_date
from Sales;

select max(transaction_date) as last_transaction_date
from Sales;
/*
- Ngày diễn ra giao dịch đầu tiên của tháng là 2023-10-02.
- Ngày diễn ra giao dịch cuối cùng của tháng là 2023-10-30.
*/