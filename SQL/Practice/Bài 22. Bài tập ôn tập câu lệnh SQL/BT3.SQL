-- Hãy cho biết những thể loại
-- nào (CategoryID) có số sản phẩm 
-- khác nhau lớn hơn 11
SELECT 
	SP.CategoryID AS "Thể loại",
	COUNT(SP.ProductID) AS " Số sản phẩm"
FROM Products SP
GROUP BY SP.CategoryID
HAVING COUNT(SP.ProductID) > 11