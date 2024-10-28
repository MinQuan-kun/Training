CREATE TABLE [NhanVien] (
    [MaNV] INT NOT NULL PRIMARY KEY,
    [HoTen] VARCHAR(50) NOT NULL,
    [Phai] VARCHAR(10)
    [NgaySinh] DATE,
    [DiaChi] VARCHAR(255),
    [SDT] VARCHAR(10)
);

-- Câu lệnh này sẽ tạo bảng mới có tên
-- *NhanVien: với các cột sau:
-- *MaNV: Kiểu dữ liệu INT, khóa chính,
-- không thể chứa giá trị null,
-- *HoTen: Kiểu dữ liệu VARCHAR(50), không thể chứa giá trị null.
-- *Phai: Kiểu dữ liệu DATE.
-- DiaChi: Kiểu dữ liệu VARCHAR(255)
-- SDT: Kiểu dữ liệu VARCHAR(10).

--Tạo bảng khách hàng
CREATE TABLE KhachHang(
    MaKH INT IDENTITY(100,5) NOT NULL PRIMARY KEY,
    TenKH VARCHAR(50) NOT NULL,   
    DiaChi VARCHAR(255),
    SDT VARCHAR(10) CHECK (SDT LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);

CREATE TABLE KhachHang_1(
    MaKH INT IDENTITY(100,5) NOT NULL PRIMARY KEY,
    TenKH VARCHAR(50) NOT NULL,   
    DiaChi VARCHAR(255),
    SDT VARCHAR(10) CHECK (LEN(SDT) = 10 AND PATINDEX('%[^0-9]%', SDT) = 0)
    
)


-- VD1: Thêm cột Email vào bảng NhanVien với kiểu dữ liệu VARCHAR(100):

ALTER TABLE NhanVien
ADD Email VARCHAR(100);

-- VD2: Sửa lại kiểu dữ liệu cho HoTen bảng nhân viên
ALTER TABLE NhanVien
ALTER COLUMN HoTen NVARCHAR(100)

-- VD3: Thêm ràng buộc ngày sinh
ALTER TABLE NhanVien
ADD CONSTRAINT NgaySinhCheck CHECK (NgaySinh <= GETDATE())

-- Trước khi thêm ràng buộc, kiểm tra dữ liệu gốc có những dữ liệu nào không thỏa mãn ràng buộc => xóa trước khi thêm ràng buộc

-- VD 4: Xóa dữ liệu nhân viên
TRUNCATE TABLE NhanVien

-- VD5: Xóa bảng nhân viên
DROP TABLE NhanVien;