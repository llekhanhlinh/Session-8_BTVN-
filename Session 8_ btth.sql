-- 1. COUNT: Có bao nhiêu đơn hàng trong bảng Orders?
select count(*) as so_don_hang
from Orders;

-- 2. SUM: Tổng số lượng sản phẩm đã bán là bao nhiêu?
select sum(quantity) as tong_so_luong
from Orders;
 
-- 3. AVG: Giá trung bình của các sản phẩm là bao nhiêu?
select avg(price) as gia_trung_binh
from Orders;

-- 4. MIN: Tìm giá thấp nhất của sản phẩm.
select min(price) as gia_thap_nhat
from Orders;

-- 5. MAX: Tìm giá cao nhất của sản phẩm.
select max(price) as gia_cao_nhat
from Orders;
 
-- 6. COUNT + GROUP BY: Đếm số đơn hàng theo từng quốc gia (country).
select
	country, 
    count(*) as so_don_hang
from Orders
group by country;
 
-- 7. AVG + GROUP BY: Tính giá trung bình của sản phẩm theo từng quốc gia.
select
	country, 
    avg(price) as gia_trung_binh
from Orders
group by country;