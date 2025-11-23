create database Cau7_ss8;
use Cau7_ss8;

CREATE TABLE ChiTietDonHang (

    ma_chi_tiet INT,

    ma_don_hang INT,

    ten_san_pham VARCHAR(100),

    so_luong INT,

    don_gia DECIMAL(10, 2),

    thanh_tien DECIMAL(10, 2)

);

INSERT INTO ChiTietDonHang (ma_chi_tiet, ma_don_hang, ten_san_pham, so_luong, don_gia, thanh_tien) VALUES
(1, 1001, 'Cà Phê Sữa', 2, 29000.00, 58000.00),
(2, 1001, 'Bạc Xỉu', 1, 35000.00, 35000.00),
(3, 1002, 'Trà Đào Cam Sả', 1, 45000.00, 45000.00),
(4, 1003, 'Cà Phê Sữa', 1, 29000.00, 29000.00),
(5, 1004, 'Trà Sữa Trân Châu Đường Đen', 2, 55000.00, 110000.00),
(6, 1005, 'Bạc Xỉu', 1, 35000.00, 35000.00),
(7, 1006, 'Cà Phê Sữa', 3, 29000.00, 87000.00),
(8, 1006, 'Trà Chanh Gừng Mật Ong', 1, 42000.00, 42000.00),
(9, 1007, 'Trà Đào Cam Sả', 2, 45000.00, 90000.00),
(10, 1008, 'Trà Sữa Trân Châu Đường Đen', 1, 55000.00, 55000.00),
(11, 1009, 'Cà Phê Sữa', 1, 29000.00, 29000.00),
(12, 1010, 'Trà Chanh Gừng Mật Ong', 1, 42000.00, 42000.00);

-- Nhiệm vụ 1
select 
    ten_san_pham,
    sum(so_luong) as tong_so_ly_ban,
    sum(thanh_tien) as tong_doanh_thu,
    count(DISTINCT ma_don_hang) as so_don_hang_chua_sp
from ChiTietDonHang
group by ten_san_pham
order by tong_doanh_thu desc;

-- Nhiệm vụ 2
/*

1. Tổng hợp hiệu suất sản phẩm (dựa trên dữ liệu đã cho)
- Cà Phê Sữa:
    + Tổng ly bán: 7 ly
    + Tổng doanh thu: 203000.00
    + Số đơn hàng: 4
    
- Trà Sữa Trân Châu Đường Đen:
    + Tổng ly bán: 3 ly
    + Tổng doanh thu: 165000.00
    + Số đơn hàng: 2

- Trà Đào Cam Sả:
    + Tổng ly bán: 3 ly
    + Tổng doanh thu: 135000.00
    + Số đơn hàng: 2

- Trà Chanh Gừng Mật Ong:
    + Tổng ly bán: 2 ly
    + Tổng doanh thu: 84000.00
    + Số đơn hàng: 2
    
- Bạc Xỉu:
    + Tổng ly bán: 2 ly
    + Tổng doanh thu: 70000.00
    + Số đơn hàng: 2

* 2 sản phẩm ngôi sao (hiệu suất tốt nhất):
1) Cà Phê Sữa
   - Doanh thu cao nhất (203000.00)
   - Bán được nhiều nhất (7 ly)
   - Xuất hiện trong nhiều đơn hàng nhất (4 đơn)

2) Trà Sữa Trân Châu Đường Đen
   - Doanh thu đứng thứ 2 (165000.00)
   - Lượng bán khá cao (3 ly)

* 2 sản phẩm cần xem xét (hiệu suất thấp nhất):
1) Bạc Xỉu
   - Doanh thu thấp nhất (70000.00)
   - Số ly bán thấp (2 ly)

2) Trà Chanh Gừng Mật Ong
   - Lượng bán thấp (2 ly)
   - Doanh thu 84000.00

* Đề xuất chiến lược
- Sản phẩm Cà Phê Sữa:
Đề xuất: Chạy chương trình "Mua 2 giảm 20%" hoặc combo kèm bánh ngọt.
→ Tăng hiệu ứng mua nhiều (tiết kiệm), thúc đẩy doanh số, đặc biệt phù hợp sinh viên.

- Sản phẩm "Cần xem xét" – Bạc Xỉu:
Đề xuất: Làm “Tuần lễ dùng thử Bạc Xỉu – đồng giá 19.000”
→ Thu hút khách nếm thử, giúp đánh giá lại nhu cầu thị trường.
*/
