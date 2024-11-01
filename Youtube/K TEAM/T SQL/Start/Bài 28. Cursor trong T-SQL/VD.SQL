-- Khi có nhu cầu duyệt từng record của bảng, với mỗi record có kết quả xử lý riêng thì dùng cursor
-- Cú pháp
-- Declare <Tên con trỏ> cursor for <câu select>
-- Open <Tên con trỏ>

-- FETCH NEXT FROM <Tên con trỏ> INTO <Danh sách các biến tương ứng kết quả truy vấn>

-- WHILE @@FETCH_STATUS = 0
-- BEGIN
-- Câu lệnh thực hiện
-- FETCH NEXT lại lần nữa
-- FETCH NEXT FROM <Tên con trỏ> INTO <Danh sách các biến tương ứng kết quả truy vấn>
-- END

-- CLOSE <Tên con trỏ>
-- DEALLOCATE <tên con trỏ>
--------------------------------------------------------------------------------------------------------------------
-- Từ tuổi của giáo viên
-- Nếu lớn hơn 40 thì cho lương là 2500
-- Nếu nhỏ hơn 40 và lớn hon 30 cho lương là 2000
-- Ngược lại thì lương là 1500

USE HowKteam
GO
CREATE PROC TUOI 
AS 
BEGIN 
    DECLARE C_Tuoi CURSOR FOR (SELECT 
    MAGV,
    YEAR(GETDATE()) - YEAR(NGSINH) AS "Tuổi"
    FROM GV22
    )
    OPEN C_Tuoi
    DECLARE @GV_ID NCHAR(10)
    DECLARE @Tuoi INT
    FETCH NEXT FROM C_Tuoi INTO @GV_ID, @Tuoi
    WHILE @@FETCH_STATUS = 0
    BEGIN
        IF @Tuoi > 40
        BEGIN 
            UPDATE GV22
            SET LUONG = 2500
            WHERE MAGV = @GV_ID
        END
        ELSE 
        IF @Tuoi > 30
        BEGIN 
            UPDATE GV22
            SET LUONG = 2000
            WHERE MAGV = @GV_ID
        END
        ELSE
        BEGIN 
            UPDATE GV22
            SET LUONG = 1500
            WHERE MAGV = @GV_ID
        END
    FETCH NEXT FROM C_Tuoi INTO @GV_ID, @Tuoi
    END
    CLOSE C_Tuoi
    DEALLOCATE C_Tuoi
END
EXEC TUOI 
DROP PROC TUOI 