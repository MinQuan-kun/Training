-- Phần này không có trên Kênh K Team, tự tạo bài tập
-- Giả sử nhập vào mã số Giáo viên và nếu 
-- Giáo viên đó thuộc khoa CNTT thì xuất ra thông tin Giáo viên đó, ngược lại xuất ra thông báo
-- Giáo viên này không phải Giáo viên khoa công nghệ thông tin
-- Sử dụng Procedure 
USE HowKteam
GO
CREATE PROC C_GVCNTT
    @GV_ID INT 
AS 
BEGIN
	IF @GV_ID IN
	(
    SELECT GV.MAGV
    FROM GIAOVIEN GV
	JOIN BOMON M ON M.MABM = GV.MABM
	JOIN KHOA K ON K.MAKHOA = M.MAKHOA
	WHERE K.TENKHOA = N'Công nghệ thông tin'
	GROUP BY GV.MAGV
	)
	BEGIN 
	SELECT *
	FROM GIAOVIEN
	WHERE MAGV = @GV_ID
	END
	ELSE
	BEGIN
		PRINT(N'Giáo viên này không thuộc khoa CNTT !')
	END
END
EXEC C_GVCNTT 004
--DROP PROC C_GVCNTT
