-- Hãy liệt kê tên, đơn hàng, đơn giá, số lượng tồn kho (UnitslnStock)
-- của tất cả các sản phẩm trong bảng Products theo thứ tự giảm dần của UnitslnStock
SELECT 
	SP.ProductName AS "Tên sản phẩm",
	ProductID AS "Đơn hàng",
	UnitPrice AS "Đơn giá",
	UnitsInStock AS "Số lượng tồn kho"
FROM Products SP
ORDER BY SP.UnitsInStock DESC