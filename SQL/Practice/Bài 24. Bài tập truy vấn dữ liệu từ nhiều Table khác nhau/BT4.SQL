-- Từ 3 bảng Orders, Customers, Shippers hãy in ra các thông tin sau đây:
-- Mã đơn hàng
-- Tên khách hàng
-- Tên công ty vận chuyển
-- Ngày yêu cầu chuyển hàng
-- Ngày giao hàng
-- Và chỉ in ra các đơn hàng bị giao muộn hơn quy định
--REquiredDate > ShippedDate

--C1
SELECT OD.OrderID AS "Mã đơn hàng",
	KH.ContactName AS "Tên khách hàng",
	SI.CompanyName AS "Tên công ty vận chuyển",
	OD.RequiredDate AS "Ngày yêu cầu giao",
	OD.ShippedDate AS "Ngày giao hàng"
FROM Orders OD, Customers KH, Shippers SI
WHERE  OD.CustomerID = KH.CustomerID AND SI.ShipperID = OD.ShipVia
AND OD.RequiredDate < ShippedDate

--C2
SELECT OD.OrderID AS "Mã đơn hàng",
	KH.ContactName AS "Tên khách hàng",
	SI.CompanyName AS "Tên công ty vận chuyển",
	OD.RequiredDate AS "Ngày yêu cầu giao",
	OD.ShippedDate AS "Ngày giao hàng"
FROM Orders OD
JOIN Customers KH ON OD.CustomerID = KH.CustomerID
JOIN Shippers SI ON SI.ShipperID = OD.ShipVia
WHERE OD.RequiredDate < ShippedDate