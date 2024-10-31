-- Hãy cho biết mỗi khách hàng đã đặt bao nhiêu đơn hàng
SELECT CustomerID, COUNT([OrderID]) AS "Số đơn hàng"
FROM Orders
GROUP BY CustomerID