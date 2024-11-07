USE DemoQLBanHang
GO
CREATE TRIGGER trg_Capnhatsoluong
ON ChiTietHD
AFTER INSERT
AS 
BEGIN
    DECLARE @MaHH int
    DECLARE @Soluong int
    SELECT @MaHH = MaHH, @Soluong = SoLuong
    FROM inserted

    UPDATE HangHoa
    SET SoLuong = SoLuong - @Soluong
    WHERE MaHH = @MaHH
END

SELECT *
FROM HangHoa

SELECT *
FROM ChiTietHD

--Demo 
INSERT INTO ChiTietHD(MaHD,MaHH, SoLuong, DonGia, GiamGia)
    VALUES (10250, 1001, 79, 190, 0 )

ALTER TABLE HoaDon
ADD Total FLOAT  

USE DemoQLBanHang
GO
CREATE TRIGGER UPTotal
	ON ChiTietHD
	AFTER UPDATE, INSERT, DELETE
AS
BEGIN
	DECLARE @MaHD INT
	DECLARE @Tong FLOAT;

	WITH tmp AS
	(
	SELECT MaHD FROM inserted
	UNION
	SELECT MaHD FROM deleted
	)
	SELECT @MaHD = MaHD FROM tmp

	SELECT @Tong = SUM(SoLuong * DonGia * (1- GiamGia))
	FROM ChiTietHD
	WHERE MaHD = @MaHD

	--Cập nhật hóa đơn
	UPDATE HoaDon
	SET Total = @Tong
	WHERE MaHD = @MaHD
END
--DROP TRIGGER UPTotal
--DEMO
SELECT * FROM HoaDon WHERE MaHD = 10250
SELECT * FROM ChiTietHD WHERE MaHD = 10250

SELECT * FROM HangHoa WHERE MaHH = 1002

INSERT INTO ChiTietHD(MaHD, MaHH, SoLuong, DonGia, GiamGia)
	Values(10250, 1002, 79, 190, 0)

--Demo02 : INSTEAD OF Trigger 
SELECT * FROM Loai

CREATE TABLE LoaiHistory(
	Id int primary key identity(1,1),
	MaLoai int not null
	,TenLoai nvarchar(max)
	,Mota nvarchar(50)
	,Hinh nvarchar(50)
	,actiondate datetime default getutcdate()
)

CREATE Trigger L_Loaihis
	ON Loai
INSTEAD OF INSERT
AS 
BEGIN
	DECLARE @Maloai int
	--Chèn vào bảng loại
	INSERT INTO Loai(TenLoai, MoTa, Hinh)
		SELECT TenLoai, MoTa, Hinh From inserted

	SET @Maloai = @@IDENTITY
	-- Chèn vào bảng loai history
	INSERT INTO LoaiHistory(MaLoai,TenLoai, MoTa, Hinh)
		SELECT @MaLoai,TenLoai, MoTa, Hinh From inserted

END

INSERT INTO Loai(TenLoai, MoTa, Hinh) Values ('Demo', 'N/A', null)

SELECT * FROM Loai
SELECT * FROM LoaiHistory