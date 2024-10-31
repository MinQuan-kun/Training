-- Hãy cho biết những thể loại
-- nào(CategoryID) có số Tổng
-- số lượng sản phẩm trong kho 
-- (UnitsInStock) Lớn hơn 350
SELECT 
	SP.CategoryID AS " Thể loại",
	SUM(SP.UnitsInStock) AS "Tổng số lượng sản phẩm trong kho"
FROM Products SP
GROUP BY SP.CategoryID
HAVING SUM(SP.UnitsInStock) > 350
