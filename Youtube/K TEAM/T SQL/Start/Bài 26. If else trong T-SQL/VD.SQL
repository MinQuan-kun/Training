-- So sánh lương giáo viên so với lương trung bình
-- Nếu @LuongGV < @LuongTrungbinh
-- Xuất ra bé hơn
-- Ngược lại xuất ra lớn hơn
USE HowKteam
GO
--Kiểm tra lương theo MaGV
CREATE PROC KIEMTRALUONG
	@Ma_GV INT
AS
BEGIN
	DECLARE @LuongTrungbinh INT
	DECLARE @LuongGV INT
	SELECT @LuongTrungbinh = AVG(LUONG) FROM GIAOVIEN
	SELECT @LuongGV =(
	SELECT LUONG 
	FROM GIAOVIEN
	WHERE MAGV = @Ma_GV
	)
	IF @LuongGV < @LuongTrungbinh
	BEGIN
		PRINT(N'Lương giáo viên bé hơn lương trung bình')
	END
	ELSE
	BEGIN
		PRINT(N'Lương giáo viên lớn hơn lương trung bình')
	END
END
EXEC KIEMTRALUONG 001
--DROP PROC KIEMTRALUONG

-- VD2: Update lại lương giáo viên nếu Lương > Lương trung bình
--Ngược lại nếu giáo viên đó là nữ thì Update Lương = 1500
-- Theo mã giáo viên
USE HowKteam
GO
CREATE PROC UPLUONG
    @MA_GV INT
AS
BEGIN
    DECLARE @Luong INT = 1500
    DECLARE @LuongTrungbinh INT
	DECLARE @LuongGV INT
	SELECT @LuongTrungbinh = AVG(LUONG) FROM GIAOVIEN
	SELECT @LuongGV =(
	SELECT LUONG 
	FROM GIAOVIEN
	WHERE MAGV = @Ma_GV
	)
	IF @LuongGV > @LuongTrungbinh
	BEGIN
		UPDATE GIAOVIEN
        SET LUONG = @Luong
	END
	ELSE
	BEGIN
		UPDATE GIAOVIEN
        SET LUONG = @Luong
        WHERE PHAI = N'Nữ'
	END
END
EXEC UPLUONG 006
--DROP PROC UPLUONG
