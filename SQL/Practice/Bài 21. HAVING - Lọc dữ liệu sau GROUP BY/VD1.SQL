-- Hãy cho biết những khách hàng nào đã đặt nhiều hơn 20
-- đơn hàng, sắp xếp theo thứ tự tổng số đơn hàng giảm dần
SELECT 
	OD.CustomerID,
	COUNT(OD.OrderID) AS "Đơn hàng"
FROM Orders OD
GROUP BY OD.CustomerID
HAVING COUNT(OD.OrderID) > 20
ORDER BY COUNT(OD.OrderID) DESC