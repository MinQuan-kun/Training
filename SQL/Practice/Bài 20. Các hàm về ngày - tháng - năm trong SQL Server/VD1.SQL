-- Tính số lượng đơn đặt hàng
-- trong năm 1997 của từng khách hàng
SELECT OD.CustomerID,
	COUNT(OrderID) AS "Số lượng đơn đặt hàng",
	YEAR(OD.OrderDate) AS "Năm"
FROM Orders OD
WHERE YEAR(OrderDate) = 1997
GROUP BY OD.CustomerID, YEAR(OrderDate)