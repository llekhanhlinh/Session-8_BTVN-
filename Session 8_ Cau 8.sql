create database dulieuphantichkhachhang;
use dulieuphantichkhachhang;

CREATE TABLE DonHang (
    ma_don_hang INT,
    ma_khach_hang INT,
    ngay_dat_hang DATE,
    tong_gia_tri DECIMAL(12, 2)
);

INSERT INTO DonHang (ma_don_hang, ma_khach_hang, ngay_dat_hang, tong_gia_tri) VALUES
(1, 101, '2023-01-20', 350000.00),
(2, 102, '2023-02-10', 1250000.00),
(3, 103, '2023-02-15', 180000.00),
(4, 101, '2023-03-05', 450000.00),
(5, 104, '2023-03-22', 850000.00),
(6, 102, '2023-04-11', 980000.00),
(7, 105, '2023-04-18', 250000.00),
(8, 101, '2023-05-25', 220000.00),
(9, 103, '2023-06-01', 320000.00),
(10, 104, '2023-06-30', 1500000.00),
(11, 102, '2023-07-14', 750000.00),
(12, 101, '2023-08-09', 650000.00),
(13, 106, '2023-09-01', 2800000.00),
(14, 103, '2023-09-20', 250000.00),
(15, 102, '2023-10-10', 1150000.00),
(16, 104, '2023-11-05', 450000.00),
(17, 101, '2023-11-28', 150000.00),
(18, 102, '2023-12-15', 2100000.00);

select
    ma_khach_hang,
    sum(tong_gia_tri) as tong_chi_tieu,
    count(ma_don_hang) as tong_so_don_hang,
    avg(tong_gia_tri) as chi_tieu_trung_binh,
    min(ngay_dat_hang) as ngay_dau_tien,
    max(ngay_dat_hang) as ngay_gan_nhat
from DonHang
group by ma_khach_hang
order by tong_chi_tieu desc;

/*
Hệ thống phân hạng khách hàng
1) Hạng Bạch Kim
   - Tiêu chí: tổng chi tiêu ≥ 2,500,000 VND.
   - Quyền lợi: giảm 15%, miễn phí vận chuyển mọi đơn, ưu tiên nhận sách mới.
   2) Hạng Vàng
   - Tiêu chí: 1,000,000 ≤ tổng chi tiêu < 2,500,000 VND.
   - Quyền lợi: giảm 10%, freeship cho đơn từ 300k, voucher sinh nhật.
3) Hạng Bạc
   - Tiêu chí: tổng chi tiêu < 1,000,000 VND.
   - Quyền lợi: giảm 5% đơn kế tiếp, freeship cho đơn từ 500k, tích điểm cơ bản.
Lập luận:
- Ngưỡng dựa trên phân bố dữ liệu thực tế: có khách chi tiêu rất cao (≥2.5M), nhóm trung bình (1–2.5M), và nhóm phổ thông (<1M).
- Quyền lợi tăng theo hạng → khuyến khích khách nâng hạng.
- Hệ thống dễ hiểu, dễ triển khai, phù hợp với mô hình nhà sách trực tuyến.
*/
