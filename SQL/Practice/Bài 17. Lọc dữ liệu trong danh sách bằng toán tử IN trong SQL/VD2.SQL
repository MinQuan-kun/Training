-- Lấy ra các sản phẩm có mã thể loại khác với 2,3 và 4
SELECT *
FROM Products SP
WHERE SP.CategoryID NOT IN (2,3,4)