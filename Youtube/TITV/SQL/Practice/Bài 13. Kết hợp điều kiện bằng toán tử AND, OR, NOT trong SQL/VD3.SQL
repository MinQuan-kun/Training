-- Lấy ra tất cả các sản phẩm có giá dưới 100$ và mã thể loại khác 1.
-- Lưu ý dùng NOT
SELECT *
FROM Products SP
WHERE NOT SP.CategoryID = 1 OR SP.UnitPrice >= 100
