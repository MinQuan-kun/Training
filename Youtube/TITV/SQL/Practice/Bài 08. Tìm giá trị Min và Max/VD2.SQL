-- Viết câu lệnh ra ngày đặt hàng gần đây nhất từ bảng Orders
SELECT MAX(o.OrderDate) AS "Ngày đặt hàng"
FROM Orders o