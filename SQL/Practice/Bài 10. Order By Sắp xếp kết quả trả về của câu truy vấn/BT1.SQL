-- Hãy liệt kê danh sách các đơn đặt hàng(OrderID)
-- trong bảng Orders theo thứ tự giảm dần của ngày đặt hàng(OrderDate)
SELECT Od.OrderID AS "Đơn đặt hang",
		OrderDate
FROM Orders Od
ORDER BY Od.OrderDate DESC