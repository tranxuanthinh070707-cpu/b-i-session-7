create database phan_tich_du_lieu_don_hang;
use phan_tich_du_lieu_don_hang;

create table don_hang (
id_don_hang INT PRIMARY KEY,
id_khach_hang INT,
danh_muc VARCHAR(100),
tong_tien INT,
ngay_dat DATE,
trang_thai VARCHAR(50)   
);

INSERT INTO don_hang (id_don_hang, id_khach_hang, danh_muc, tong_tien, ngay_dat, trang_thai) VALUES
(1, 101, 'Dien tu', 15000000, '2023-01-15', 'Hoan thanh'),
(2, 102, 'Thoi trang', 2500000, '2023-01-20', 'Hoan thanh'),
(3, 101, 'Dien tu', 8000000, '2023-02-10', 'Hoan thanh'),
(4, 103, 'Gia dung', 5000000, '2023-02-12', 'Da huy'),
(5, 102, 'Thoi trang', 3000000, '2023-03-05', 'Hoan thanh'),
(6, 101, 'Gia dung', 4500000, '2023-03-08', 'Hoan thanh'),
(7, 104, 'Dien tu', 22000000, '2023-04-18', 'Hoan thanh'),
(8, 103, 'Thoi trang', 1800000, '2023-04-22', 'Hoan thanh'),
(9, 102, 'Dien tu', 12000000, '2022-12-10', 'Hoan thanh');


SELECT id_khach_hang, SUM(tong_tien) AS tong_chi_tieu FROM don_hang
GROUP BY id_khach_hang
ORDER BY tong_chi_tieu DESC;

SELECT danh_muc, COUNT(*) AS so_luong_don FROM don_hang
GROUP BY danh_muc;

SELECT  id_khach_hang FROM don_hang
GROUP BY id_khach_hang
HAVING COUNT(*) > 1;

SELECT danh_muc, SUM(tong_tien) AS tong_doanh_thu FROM don_hang
WHERE trang_thai = 'Hoan thanh'
GROUP BY danh_muc
HAVING SUM(tong_tien) > 10000000;


