-- Xuất ra số lượng người thân của giáo viên
-- Cải tiến theo Procedure xuất theo mã giáo viên
USE HowKteam
GO
CREATE PROC NGTHAN
    @GV_ID INT
AS
BEGIN
	DECLARE @SoNT INT
	SET @SoNT = (
    SELECT COUNT(NT.TEN) AS "Số người thân"
	FROM GIAOVIEN GV
	JOIN NGUOITHAN NT ON NT.MAGV = GV.MAGV
	WHERE GV.MAGV = @GV_ID
	)
	--In thông báo
	Print CONCAT(N'Số người thân của giáo viên là: ', @SoNT)
	--In bảng
	SELECT GV.HOTEN,
	COUNT(NT.TEN) AS "Số người thân"
	FROM GIAOVIEN GV
	JOIN NGUOITHAN NT ON NT.MAGV = GV.MAGV
	WHERE GV.MAGV = @GV_ID
	GROUP BY GV.HOTEN
END

EXEC NGTHAN 001
--DROP PROC NGTHAN


-- Xuất ra thông tin giáo viên có lương thấp nhất
-- Sử dụng Procedure
USE HowKteam
GO
CREATE PROC LUONGTHAP
AS
BEGIN
    DECLARE @Min INT
    SELECT @Min = 
    (
        SELECT MIN(LUONG)
        FROM GIAOVIEN
    )
    SELECT *
    FROM GIAOVIEN
    WHERE LUONG = @Min
END

EXEC LUONGTHAP
--DROP PROC LUONGTHAP