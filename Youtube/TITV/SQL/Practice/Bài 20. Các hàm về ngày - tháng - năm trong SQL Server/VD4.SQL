-- Lấy danh sách khách hàng đặt hàng trong năm 1998
-- và số đơn hàng mỗi tháng, sắp xếp tháng tăng dần
SELECT 
	OD.CustomerID,
	COUNT(OD.OrderID) AS "Số đơn hàng",
	MONTH(OD.OrderDate) AS "Tháng"
FROM Orders OD
WHERE YEAR(OD.OrderDate) = 1998
GROUP BY OD.CustomerID, MONTH(OD.OrderDate)
ORDER BY MONTH(OD.OrderDate) 