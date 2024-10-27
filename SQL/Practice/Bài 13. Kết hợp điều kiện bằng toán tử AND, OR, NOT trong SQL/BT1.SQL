-- Hãy liệt kê tất cả các đơn hàng có giá vận chuyển
-- Freight trong khoảng [50, 100] đô la.
SELECT *
FROM Orders OD
WHERE OD.Freight >= 50
AND OD.Freight <= 100