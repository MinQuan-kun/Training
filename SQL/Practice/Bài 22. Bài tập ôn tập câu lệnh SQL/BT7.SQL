-- Hãy cho biết những quốc gia 
-- bắt đầu bằng chữ 'A' hoặc 'G'
-- và có số lượng đơn hàng lớn hơn 29
SELECT
	OD.ShipCountry,
	COUNT(OD.OrderID) AS "Số lượng đơn hàng"
FROM Orders OD
WHERE OD.ShipCountry LIKE 'G%' 
	OR OD.ShipCountry LIKE 'A%'
GROUP BY ShipCountry
HAVING COUNT(OD.OrderID) > 29
