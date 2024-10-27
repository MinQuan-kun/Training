-- (INNER JOIN): Liệt kê tên khách hàng và
-- tên sản phẩm đã được đặt hàng trong bảng
-- "Orders " và "Order Details".Sử dụng INNER JOIN
-- Để kết hợp bảng "Orders" và "Order Details"
-- để lấy thông tin khách hàng và sản phẩm đã được đăt
-- hàng.
SELECT
	OD.OrderID AS "Mã đơn hàng",
	OD.CustomerID AS "Mã khách hàng",
	KH.ContactName AS "Tên khách hàng",
	ODD.ProductID AS "Mã sản phẩm",
	SP.ProductName AS "Tên sản phẩm"
FROM Orders OD
INNER JOIN [Order Details] ODD ON ODD.OrderID = OD.OrderID
INNER JOIN Customers KH ON KH.CustomerID = OD.CustomerID
INNER JOIN Products SP ON SP.ProductID = ODD.ProductID
