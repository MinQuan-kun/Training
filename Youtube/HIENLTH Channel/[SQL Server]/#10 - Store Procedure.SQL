-- Tạo proc lấy danh sách hàng hóa theo loại, nhà cung cấp
use [DemoQLBanHang]
go
CREATE PROC L_SP
    @MaLoai int,
    @MaNCC nvarchar(50)
AS
BEGIN
	SELECT *
	FROM HangHoa HH
    WHERE HH.MaLoai = @MaLoai
    AND HH.MaNCC = @MaNCC
END
EXEC L_SP 1001, 'SS'
--DROP PROC L_SP

-- Lấy danh sách hàng hóa theo loại
USE DemoQLBanHang 
GO
CREATE PROC L_L
	@Maloai int,
	@SoBanGhi int OUTPUT
AS
BEGIN
	SELECT *
	FROM HangHoa
	WHERE MaLoai = @Maloai
	-- Gán giá trị cho biến @SoBanGhi
	SET @Maloai = @@ROWCOUNT
END

--DEMO
DECLARE @Soluong int
EXEC L_L 1001, @Soluong OUT 
PRINT CONCAT(N'Tổng số dòng: ', @Soluong) 
--DROP PROC L_L

--Bài tập
--Viết các store procedure để
-- 1. Thêm 1 loại
USE DemoQLBanHang
GO
CREATE PROC AddL
	@Maloai INT OUTPUT,
	@TenLoai NVARCHAR(50),
	@Mota NVARCHAR(MAX),
	@Hinh NVARCHAR(50)
AS
BEGIN
    INSERT INTO Loai(TenLoai, MoTa,Hinh)
		Values (@TenLoai,@Mota,@Hinh)
	-- Lấy mã loại vừa tăng
	SET @Maloai = @@IDENTITY
END

--Demo
DECLARE @Ma INT
EXEC AddL @Ma OUT, N'Văn phòng phẩm',N'Văn phòng phẩm', N'N/A'
PRINT CONCAT(N'Mã loại vừa thêm: ',@Ma)
--DROP PROC AddL
--Kiểm tra
SELECT *
FROM Loai
-- 2. Sửa 1 loại
USE DemoQLBanHang
GO
CREATE PROC EditL
	@Maloai INT OUTPUT,
	@TenLoai NVARCHAR(50),
	@Mota NVARCHAR(MAX),
	@Hinh NVARCHAR(50)
AS
BEGIN
    UPDATE Loai
		SET TenLoai = @TenLoai,
		MoTa = @Mota,
		Hinh = @Hinh
		WHERE MaLoai = @Maloai
END
--Demo
DECLARE @Ma INT
EXEC EditL @Ma OUT, N'Văn phòng phẩm',N'Văn phòng phẩm', N'N/A'
PRINT CONCAT(N'Mã loại vừa sửa: ',@Ma)

-- 3. Xóa 1 loại
USE DemoQLBanHang
GO
CREATE PROC DeleteL
	@Maloai INT
AS
BEGIN
    DELETE FROM Loai
	WHERE MaLoai = @Maloai
END
--Demo
EXEC DeleteL 2003
--DROP PROC DeleteL

-- 4. Lấy thông tin tất cả loại
USE DemoQLBanHang
GO
CREATE PROC L_Loai
AS
BEGIN
	DECLARE C_L CURSOR FOR(
	SELECT MaLoai,TenLoai
	FROM Loai
	)
	OPEN C_L
	DECLARE @MaLoai INT
	DECLARE @TenLoai NVARCHAR(50)
	FETCH NEXT FROM C_L INTO @MaLoai,@TenLoai
	WHILE @@FETCH_STATUS = 0
		BEGIN
		SELECT *
		FROM Loai
		WHERE MaLoai = @MaLoai
		AND TenLoai = @TenLoai
		FETCH NEXT FROM C_L INTO @MaLoai,@TenLoai
		END
	CLOSE C_L
	DEALLOCATE C_L
END
EXEC L_Loai
DROP PROC L_Loai
-- 5. Lấy thông tin một loại cụ thể theo mã
USE DemoQLBanHang
GO
CREATE PROC C_Ifo
	@MaLoai int
AS
BEGIN
	SELECT *
	FROM Loai
	WHERE MaLoai = @MaLoai
END
EXEC C_Ifo 1001
DROP PROC C_Ifo
-- 6. Lấy danh sách hàng hóa thuộc loại cụ thể
USE DemoQLBanHang
GO
CREATE PROC L_HH
	@MaLoai INT
AS
BEGIN
	SELECT *
	FROM HangHoa
	WHERE MaLoai = @MaLoai
END

EXEC L_HH 1001
--DROP PROC L_HH

-- Bài tập (tt)
-- 7. Liệt kê DS khách hàng (HoTen, DienThoai)
-- có đặt hàng với tổng số tiền trên X.
USE DemoQLBanHang
GO
CREATE PROC C_7
	@Tien INT
AS
BEGIN
    SELECT KH.HoTen, KH.DienThoai,
	SUM(CHD.DonGia * CHD.SoLuong) AS "Tổng hóa đơn"
    FROM KhachHang KH
	JOIN HoaDon HD ON HD.MaKH = KH.MaKH
    JOIN ChiTietHD CHD ON CHD.MaHD = HD.MaHD
    GROUP BY KH.HoTen, KH.DienThoai
    HAVING SUM(CHD.DonGia * CHD.SoLuong) > @Tien;
END
EXEC C_7 80000
--DROP PROC C_7

-- 8. Liệt kê DS hàng hóa (TenHH, Số đơn) có
-- tổng số đơn đặt hàng trên X.
USE DemoQLBanHang
GO
CREATE PROC C_8
	@Count INT
AS
BEGIN
	SELECT TenHH,
	COUNT(CTHD.MaHH) AS "Số đơn"
	FROM ChiTietHD CTHD 
	JOIN HangHoa HH ON HH.MaHH = CTHD.MaHH
	GROUP BY TenHH
	HAVING COUNT(CTHD.MaHH) > @Count
END
EXEC C_8 2
--DROP PROC C_8

-- 9. Liệt kê DS hàng hóa (TenHH, Tổng SL) có
-- tổng số lượng đặt hàng trên X.
USE DemoQLBanHang
GO
CREATE PROC C_9
	@Count INT
AS
BEGIN
	SELECT TenHH,
	SUM(CTHD.SoLuong) AS "Tổng số lượng"
	FROM ChiTietHD CTHD 
	JOIN HangHoa HH ON HH.MaHH = CTHD.MaHH
	GROUP BY TenHH
	HAVING SUM(CTHD.MaHH) > @Count
END
EXEC C_9 200
--DROP PROC C_9

-- 10.Liệt kê DS hàng hóa (TenHH, Tổng số tiền)
-- có tổng số tiền đặt hàng trên X.
USE DemoQLBanHang
GO
CREATE PROC C_10
	@SoTien FLOAT
AS
BEGIN
	SELECT TenHH,
	SUM(CTHD.SoLuong * CTHD.DonGia) AS "Tổng số Tiền"
	FROM ChiTietHD CTHD 
	JOIN HangHoa HH ON HH.MaHH = CTHD.MaHH
	GROUP BY TenHH
	HAVING SUM(CTHD.SoLuong * CTHD.DonGia) > @SoTien
END
EXEC C_10 200
--DROP PROC C_10