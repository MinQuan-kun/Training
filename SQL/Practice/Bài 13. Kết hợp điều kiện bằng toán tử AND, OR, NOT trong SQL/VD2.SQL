-- Bạn hãy liệt kê tất các đơn hàng được giao đến Brazil,
-- đã bị giao muộn, biết rằng ngày cần giao hàng là RequiredDate
-- , ngày giao thực tế là ShippedDate
SELECT *
FROM Orders OD
WHERE
	OD.ShipCountry = 'Brazil'
AND OD.RequiredDate < OD.ShippedDate;