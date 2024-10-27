-- Hãy cho biết mỗi thể loại
-- có tổng số bao nhiêu sản phẩm trong kho
-- (UnitsOnStock)
SELECT SP.CategoryID, SUM(SP.UnitsInStock) AS "Tổng số sản phẩm trong kho"
FROM Products SP
GROUP BY SP.CategoryID
