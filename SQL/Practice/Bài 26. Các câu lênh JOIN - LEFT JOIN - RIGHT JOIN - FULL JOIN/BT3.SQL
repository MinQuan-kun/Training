-- (RIGHT JOIN): Hãy liệt kê tên khách hàng và tên đơn hàng của
-- các khách hàng trong bảng "Orders", bao gồm cả các khách hàng 
-- không có đơn hàng 
SELECT 
	KH.ContactName AS "Tên khách hàng",
	OD.OrderID AS "Đơn hàng"
FROM Orders OD
RIGHT JOIN Customers KH ON KH.CustomerID = OD.CustomerID
