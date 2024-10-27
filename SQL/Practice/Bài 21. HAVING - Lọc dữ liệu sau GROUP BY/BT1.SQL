-- Hãy lọc ra những thành phố có số lượng đơn hàng > 16
-- và sắp xếp theo tổng số lượng giảm dần
SELECT 
	OD.ShipCity,
	COUNT(OD.OrderID) AS "Số đơn hàng"
FROM Orders OD
GROUP BY OD.ShipCity
HAVING COUNT(OD.OrderID) > 16
ORDER BY COUNT(OD.OrderID) DESC