-- Database NORTHWND
-- Lấy ra tuổi của nhân viên
USE NORTHWND
GO
SELECT 
	EmployeeID,
	(YEAR(GETDATE()) - YEAR(BirthDate)) AS "Tuổi"
FROM Employees
-- Lấy ra tuổi cao nhất
USE NORTHWND
GO
SELECT TOP 1
	EmployeeID,
	(YEAR(GETDATE()) - YEAR(BirthDate)) AS "Tuổi"
FROM Employees
ORDER BY (YEAR(GETDATE()) - YEAR(BirthDate)) DESC

--Sử dụng biến Declare 
DECLARE @Tuoi INT
SELECT @Tuoi = 
(
SELECT TOP 1
	(YEAR(GETDATE()) - YEAR(BirthDate)) AS "Tuổi"
FROM Employees
ORDER BY (YEAR(GETDATE()) - YEAR(BirthDate)) DESC 
)
-- Lấy ra tuổi cao nhất của nhân viên
SELECT @Tuoi AS "Tuổi lớn nhất";
--Đánh giá : Câu truy vấn trở nên gọn hơn
-------------------------------------------------------------------------------------
USE HowKteam
GO
-- Tìm giáo viên có lương cao nhất
SELECT *
FROM GIAOVIEN
WHERE LUONG IN 
(
SELECT MAX(LUONG)
FROM GIAOVIEN
)
-- Lấy ra tuổi của giáo viên có mã giáo viên 001
SELECT 
	YEAR(GETDATE()) - YEAR(NGSINH) AS "Tuổi"
FROM GIAOVIEN
WHERE MAGV = 001

SELECT *
FROM GIAOVIEN
-- 

--Khởi tạo với kiểu dữ liệu
-- Biến bắt đầu = Ký hiệu 0

-- Khởi tạo với giá trị mặc định
DECLARE @i INT 

-- Khởi tạo với giá trị mặc định
DECLARE @j INT = 0

-- SET Dữ liệu cho biến
SET @i += 1
SET @j = @j + 1
SET @j = @i + @j

--SET Thông qua SELECT 
DECLARE @Tuoicaonhat INT
SET @Tuoicaonhat =
(
	SELECT TOP 1
	(YEAR(GETDATE()) - YEAR(NGSINH)) AS "Tuổi"
FROM GIAOVIEN
ORDER BY (YEAR(GETDATE()) - YEAR(NGSINH)) DESC 
)