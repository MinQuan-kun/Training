-- Tính tỷ lệ giá vận chuyển đơn đặt hàng (Freight) 
-- trung bình của các đơn hàng trong bảng Orders so với giá trị vận chuyển của đơn hàng lớn nhất(MaxFreight)
SELECT AVG(Freight) / MAX(Freight) AS "Tỷ lệ giá vận chuyển"
FROM Orders 