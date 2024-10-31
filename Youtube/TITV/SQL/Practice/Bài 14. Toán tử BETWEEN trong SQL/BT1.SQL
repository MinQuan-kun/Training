-- Lấy danh sách các đơn đặt hàng có ngày đặt hàng
-- trong khoảng ngày 1/1/1997 đến  ngày
-- 31/12/1997 và được vận chuyển bằng đường tàu thủy(ShipVia = 3)
SELECT*
FROM Orders OD
WHERE OD.OrderDate BETWEEN '1997-01-01' AND '1997-12-31'
AND OD.ShipVia = 3