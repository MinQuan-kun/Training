-- Hãy lọc ra những nhà cung cấp sản phẩm
-- có tổng số lượng hàng trong kho (UnitslnStock)
-- lớn hơn 30, và có trung bình đơn giá (UnitPrice)
-- có giá trị dưới 50
SELECT 
	SP.SupplierID,
	SUM(UnitsInStock) AS "Tổng số lương",
	AVG(UnitPrice) AS "Giá trung bình"
FROM Products SP
GROUP BY SP.SupplierID
HAVING AVG(UnitPrice) <50 AND SUM(UnitsInStock) >30
