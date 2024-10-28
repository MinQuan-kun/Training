-- Bài tập tổng hợp
Yêu cầu 1: Tạo bảng SinhVien với các cột sau:
*MaSV: Kiểu dữ liệu INT, khóa chính, không thể chứa giá trị null.
*HoTen: Kiểu dữ liệu VARCHAR(50), không thể chứa giá trị null.
*Lop: Kiểu dữ liệu VARCHAR(20).
*Nganh: Kiểu dữ liệu VARCHAR(20).
DiemTB: Kiểu dữ liệu FLOAt.

2. Thêm cột Email vào bảng SinhVien với kiểu dữ liệu VARCHAR(100).
3. Sửa đổi kiểu dữ liệu của cột DiemTB trong bảng SinhVien thành 
kiểu dữ liệu DECIMAL(2,1).
4. Xóa cột Nganh khỏi bảng SinhVien.
5. Thêm rảng buộc kiểm tra cho cột DiemTB trong bảng SinhVien để giá trị
phải lớn hơn hoặc bằng 0
6. Thêm ràng buộc duy nhất cho cột MaSV trong bảng SinhVien

--1
CREATE TABLE SinhVien(
    MaSV INT IDENTITY(100,5) NOT NULL PRIMARY KEY,
    HoTen NVARCHAR(50) NOT NULL,
    Lop VARCHAR(20),
    Nganh NVARCHAR(20),
    DiemTB FLOAT
)
--NVARCHAR sẽ bao gồm các ký tự có dấu

--2
ALTER TABLE SinhVien
ADD Email VARCHAR(100)

--3
ALTER TABLE SinhVien
ALTER COLUMN DiemTB DECIMAL(2,1)

--4
ALTER TABLE SinhVien
DROP COLUMN Nganh

--5
ALTER TABLE SinhVien
ADD CONSTRAINT DiemTBCheck CHECK (DiemTB >= 0)

--6
ALTER TABLE SinhVien
ADD CONSTRAINT MaSVCheck UNIQUE (MaSV);