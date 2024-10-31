-- Hãy cho biết giá vận chuyển thấp nhất và lớn nhất
-- của các đơn hàng theo từng thành phố và quốc gia khác nhau
SELECT 
	OD.ShipCity,
	OD.ShipCountry,
	MAX(OD.Freight) AS "Giá vận chuyển cao nhất",
	MIN(OD.Freight) AS "Giá vận chuyển thấp nhất"
FROM Orders OD
GROUP BY OD.ShipCountry , OD.ShipCity