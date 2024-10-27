-- Hãy cho viết những ngày
-- nào có nhiều hơn 5 đơn hàng
-- được giao, sắp xếp tăng dần 
-- theo ngày giao hàng.
SELECT
	DAY(OD.OrderDate) AS "Ngày",
	COUNT(OD.OrderID) AS "Số đơn hàng"
FROM Orders OD
GROUP BY DAY(OD.OrderDate)
HAVING COUNT(OD.OrderID) > 5
ORDER BY DAY(OD.OrderDate)
