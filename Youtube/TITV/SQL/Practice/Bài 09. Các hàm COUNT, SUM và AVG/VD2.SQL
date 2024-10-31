-- Tính tổng số tiền vận chuyển(Freight) của tất cả các đơn đặt hàng
SELECT SUM(o.Freight) AS "Tổng tiền"
FROM Orders o