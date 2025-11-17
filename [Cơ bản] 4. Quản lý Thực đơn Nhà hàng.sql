create database quan_ly_thuc_don_nha_hang;
use quan_ly_thuc_don_nha_hang;

create table mon_an (
id INT PRIMARY KEY,
ten_mon VARCHAR(255),
danh_muc VARCHAR(100),      
gia_tien INT,
trang_thai_phuc_vu VARCHAR(50)   
);

INSERT INTO mon_an (id, ten_mon, danh_muc, gia_tien, trang_thai_phuc_vu) VALUES
(1, 'Phở Bò Tái', 'Món chính', 50000, 'Đang phục vụ'),
(2, 'Cơm Gà Xối Mỡ', 'Món chính', 45000, 'Đang phục vụ'),
(3, 'Gỏi Cuốn Tôm Thịt', 'Khai vị', 30000, 'Đang phục vụ'),
(4, 'Bún Bò Huế', 'Món chính', 55000, 'Tạm ngưng'),
(5, 'Nước Cam Ép', 'Đồ uống', 25000, 'Đang phục vụ'),
(6, 'Chè Hạt Sen', 'Tráng miệng', 20000, 'Đang phục vụ'),
(7, 'Cà Phê Sữa Đá', 'Đồ uống', 22000, 'Đang phục vụ'),
(8, 'Bò Lúc Lắc', 'Món chính', 70000, 'Đang phục vụ');

Liệt kê các món ăn thuộc danh mục 'Món chính' hoặc 'Khai vị'. (Sử dụng IN)
SELECT * FROM mon_an
WHERE danh_muc IN ('Món chính', 'Khai vị');


Tìm món ăn có giá rẻ nhất trong số các món đang được phục vụ ('Đang phục vụ'). (Kết hợp MIN và WHERE)
SELECT * FROM mon_an
WHERE gia_tien = (
    SELECT MIN(gia_tien)
    FROM mon_an
    WHERE trang_thai_phuc_vu = 'Đang phục vụ'
)
AND trang_thai_phuc_vu = 'Đang phục vụ';


Tìm tất cả các món ăn có chữ 'Bò' trong tên món. (Sử dụng LIKE)
SELECT * FROM mon_an
WHERE ten_mon LIKE '%Bò%';


Liệt kê 3 món ăn có giá tiền từ thấp đến cao nhất. (Sử dụng ORDER BY và LIMIT)
SELECT * FROM mon_an
ORDER BY gia_tien ASC
LIMIT 3;
