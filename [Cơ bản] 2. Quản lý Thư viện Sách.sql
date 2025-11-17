create database quan_ly_thu_vien_sach;
use quan_ly_thu_vien_sach;

create table sach(
 id INT PRIMARY KEY,
tieu_de VARCHAR(255),
tac_gia VARCHAR(255),
the_loai VARCHAR(100),
nam_xuat_ban INT,
trang_thai VARCHAR(50)
);

INSERT INTO sach (id, tieu_de, tac_gia, the_loai, nam_xuat_ban, trang_thai) VALUES
(1, 'Dế Mèn phiêu lưu ký', 'Tô Hoài', 'Văn học', 1941, 'Có sẵn'),
(2, 'Cho tôi xin một vé đi tuổi thơ', 'Nguyễn Nhật Ánh', 'Văn học', 2008, 'Đã mượn'),
(3, 'Số đỏ', 'Vũ Trọng Phụng', 'Tiểu thuyết', 1936, 'Có sẵn'),
(4, 'Nhà giả kim', 'Paulo Coelho', 'Tiểu thuyết', 1988, 'Có sẵn'),
(5, 'Mắt biếc', 'Nguyễn Nhật Ánh', 'Văn học', 1990, 'Đã mượn'),
(6, 'Trên đường băng', 'Tony Buổi Sáng', 'Kỹ năng sống', 2015, 'Có sẵn'),
(7, 'Đắc nhân tâm', 'Dale Carnegie', 'Kỹ năng sống', 1936, 'Có sẵn');

Tìm tất cả các cuốn sách của tác giả 'Nguyễn Nhật Ánh'.
SELECT * FROM sach
WHERE tac_gia = 'Nguyễn Nhật Ánh';


Liệt kê tất cả các cuốn sách thuộc thể loại 'Văn học' hoặc 'Tiểu thuyết'. (Sử dụng IN)
SELECT * FROM sach
WHERE the_loai IN ('Văn học', 'Tiểu thuyết');


Đếm số lượng sách hiện đang ở trạng thái 'Đã mượn'.
SELECT COUNT(*) AS so_luong_da_muon FROM sach
WHERE trang_thai = 'Đã mượn';


Liệt kê 2 cuốn sách cũ nhất trong thư viện (dựa vào năm xuất bản)
SELECT * FROM sach
ORDER BY nam_xuat_ban ASC
LIMIT 2;
