-- --Viết câu lệnh SQL lấy ra các sản phẩm 
-- có mã thể loại không bị trùng lặp
-- và chỉ lấy ra 3 dòng đầu tiên
SELECT DISTINCT TOP 3
        CategoryID
FROM Products