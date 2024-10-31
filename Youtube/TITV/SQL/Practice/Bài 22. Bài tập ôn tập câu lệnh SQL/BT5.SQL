-- Hãy cho biết những quốc gia
-- nào có nhiều hơn 7 đơn hàng
SELECT 
	OD.ShipCountry AS "Quốc gia",
	COUNT(OD.OrderID) AS "Số đơn hàng"
FROM Orders OD
GROUP BY OD.ShipCountry
HAVING COUNT(OD.OrderID) > 7