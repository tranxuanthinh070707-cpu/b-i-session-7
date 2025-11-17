create database hieu_suat_kinh_doanh;
use hieu_suat_kinh_doanh;

create table giao_dich (
id_giao_dich INT PRIMARY KEY,
id_khach_hang INT,
id_san_pham INT,
ten_san_pham VARCHAR(255),
danh_muc VARCHAR(100),
so_luong INT,
don_gia INT,
ngay_giao_dich DATE,
khu_vuc VARCHAR(100)              -- Ví dụ: 'Ha Noi', 'Da Nang', 'TP.HCM'
);



INSERT INTO giao_dich (id_giao_dich, id_khach_hang, id_san_pham, ten_san_pham, danh_muc, so_luong, don_gia, ngay_giao_dich, khu_vuc)
VALUES
(1, 101, 1, 'Laptop A', 'Dien tu', 1, 20000000, '2023-01-15', 'Ha Noi'),
(2, 102, 2, 'Dien thoai B', 'Dien tu', 2, 15000000, '2023-02-20', 'TP.HCM'),
(3, 101, 3, 'Ao so mi C', 'Thoi trang', 5, 500000, '2023-03-10', 'Ha Noi'),
(4, 103, 1, 'Laptop A', 'Dien tu', 1, 20000000, '2023-03-12', 'Da Nang'),
(5, 102, 4, 'Quan jean D', 'Thoi trang', 3, 700000, '2023-04-05', 'TP.HCM'),
(6, 101, 2, 'Dien thoai B', 'Dien tu', 1, 15000000, '2023-05-08', 'Ha Noi'),
(7, 104, 5, 'Noi com dien E', 'Gia dung', 2, 2000000, '2023-05-18', 'TP.HCM'),
(8, 103, 3, 'Ao so mi C', 'Thoi trang', 10, 500000, '2023-06-22', 'Da Nang'),
(9, 102, 1, 'Laptop A', 'Dien tu', 1, 21000000, '2023-07-10', 'TP.HCM'),
(10, 105, 6, 'May xay sinh to F', 'Gia dung', 1, 1500000, '2022-12-01', 'Ha Noi'),
(11, 101, 4, 'Quan jean D', 'Thoi trang', 2, 700000, '2023-08-15', 'Ha Noi');

SELECT id_khach_hang, SUM(so_luong * don_gia) AS tong_chi_tieu_2023 FROM giao_dich
WHERE YEAR(ngay_giao_dich) = 2023
GROUP BY id_khach_hang
HAVING SUM(so_luong * don_gia) > 30000000;

SELECT khu_vuc, SUM(so_luong) AS tong_so_luong_ban, SUM(so_luong * don_gia) AS tong_doanh_thu FROM giao_dich
WHERE ten_san_pham = 'Laptop A'
GROUP BY khu_vuc
HAVING SUM(so_luong) >= 1;

SELECT danh_muc, AVG(so_luong * don_gia) AS gia_tri_trung_binh FROM giao_dich
WHERE khu_vuc = 'TP.HCM'
GROUP BY danh_muc
HAVING AVG(so_luong * don_gia) > 5000000;

SELECT id_khach_hang FROM giao_dich
WHERE YEAR(ngay_giao_dich) = 2023
GROUP BY id_khach_hang
HAVING COUNT(DISTINCT danh_muc) >= 2;





