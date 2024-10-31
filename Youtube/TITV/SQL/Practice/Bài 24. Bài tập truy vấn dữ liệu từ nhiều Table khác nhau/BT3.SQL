-- Từ 3 bảng Orders, Customers, Shippers hãy in ra các thông tin sau đây:
-- Mã đơn hàng
-- Tên khách hàng
-- Tên công ty vận chuyển
-- Và chỉ in ra các đơn hàng của các khách hàng đến từ thành phố 'London'

--C1
SELECT OD.OrderID AS "Mã đơn hàng",
	KH.ContactName AS "Tên khách hàng",
	SI.CompanyName AS "Tên công ty vận chuyển"
FROM Orders OD, Customers KH, Shippers SI
WHERE OD.CustomerID = KH.CustomerID AND SI.ShipperID = OD.ShipVia
AND KH.City = 'London'

--C2
SELECT OD.OrderID AS "Mã đơn hàng",
	KH.ContactName AS "Tên khách hàng",
	SI.CompanyName AS "Tên công ty vận chuyển"
FROM Orders OD
JOIN Customers KH ON  OD.CustomerID = KH.CustomerID
JOIN Shippers SI ON  SI.ShipperID = OD.ShipVia
WHERE KH.City = 'London'