-- Từ 3 bảng  Orders, Customers, Shippers hãy in ra các thông tin sau đây:
-- -Mã đơn hàng
-- -Tên khách hàng
-- -Tên công ty vận chuyển
-- Và chỉ in các đơn hàng được giao đến 'UK' trong năm
-- 1997

--C1
SELECT
	OD.OrderID AS "Mã đơn hàng",
	KH.ContactName AS "Tên khách hàng",
	SI.CompanyName AS "Tên công ty vận chuyển"
FROM Orders OD, Customers KH, Shippers SI
WHERE OD.CustomerID = KH.CustomerID
	AND OD.ShipVia = SI.ShipperID
	AND OD.ShipCountry = 'UK'
	AND YEAR(OD.OrderDate) = 1997

--C2
SELECT
	OD.OrderID AS "Mã đơn hàng",
	KH.ContactName AS "Tên khách hàng",
	SI.CompanyName AS "Tên công ty vận chuyển"
FROM Orders OD 
JOIN Customers KH ON OD.CustomerID = KH.CustomerID
JOIN Shippers SI ON OD.ShipVia = SI.ShipperID
WHERE 
	OD.ShipCountry = 'UK'
	AND YEAR(OD.OrderDate) = 1997
