CREATE TABLE pham_san (
    id INT PRIMARY KEY,
    ten_san_pham VARCHAR(255),
    danh_muc VARCHAR(100),
    gia_ban INT,
    so_luong_ton INT
);

INSERT INTO san_pham (id, ten_san_pham, danh_muc, gia_ban, so_luong_ton) VALUES
(1, 'Laptop Dell XPS 13', 'Laptop', 28000000, 15),
(2, 'iPhone 14 Pro Max', 'Điện thoại', 32000000, 30),
(3, 'Bàn phím cơ Logitech', 'Phụ kiện', 2500000, 50),
(4, 'Laptop MacBook Air M2', 'Laptop', 29500000, 20),
(5, 'Samsung Galaxy S23 Ultra', 'Điện thoại', 26000000, 25),
(6, 'Chuột không dây Fuhlen', 'Phụ kiện', 450000, 100),
(7, 'Tai nghe Sony WH-1000XM5', 'Phụ kiện', 8500000, 40),
(8, 'Laptop HP Envy 15', 'Laptop', 24000000, 18);
