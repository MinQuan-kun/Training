-- Sử dụng INNER JOIN, hãy in ra
-- các thông tin sau đây
-- _Mã đơn hàng
-- _Tên công ty khách hàng
SELECT 
	OD.OrderID AS "Mã đơn hàng",
	KH.CompanyName AS "Tên công ty khách hàng"
FROM Customers KH
INNER JOIN Orders OD ON OD.CustomerID	= KH.CustomerID
-- INNER JOIN Shippers SI ON SI.ShipperID = OD.ShipVia
