-- Liệt kê tất cả các sẩn phẩm(ProductName)
-- mà không có đơn đặt hàng nào đặt mua chúng 
SELECT *
FROM Products
WHERE ProductName = (
SELECT SP.ProductName AS "Tên sản phẩm"
FROM Products SP
WHERE SP.ProductID NOT IN(
	SELECT OD.ProductID
	FROM [Order Details] OD
)
)