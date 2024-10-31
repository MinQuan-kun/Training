-- Sử dụng RIGHT JOIN, hãy in ra 
-- các thông tin sau đây:
-- _Mã đơn hàng
-- _Tên công ty khách hàng

--INNER JOIN
SELECT OD.OrderID AS "Mã đơn hàng",
	KH.CompanyName AS "Tên công ty khách hàng"
FROM Orders OD 
INNER JOIN Customers KH ON KH.CustomerID = OD.CustomerID

--RIGHT JOIN
SELECT OD.OrderID AS "Mã đơn hàng",
	KH.CompanyName AS "Tên công ty khách hàng"
FROM Orders OD 
RIGHT JOIN Customers KH ON KH.CustomerID = OD.CustomerID