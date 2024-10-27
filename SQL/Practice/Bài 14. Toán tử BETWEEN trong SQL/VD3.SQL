-- Tính tổng số tiền vận chuyển(Freight)
-- của các đơn đặt hàng được đặt trong khoảng
-- thời gian từ ngày 1966-07-01 đến ngày 1996 -07-31
SELECT SUM(Freight) AS "Tổng tiền vận chuyển"
FROM Orders OD
WHERE OD.OrderDate BETWEEN '1966-07-01' AND '1996 -07-31'
