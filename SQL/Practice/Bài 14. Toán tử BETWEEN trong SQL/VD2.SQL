-- Lấy danh sách các đơn hàng được đặt
-- trong khoảng thời gian từ ngày 1996-07-01 
-- đến 1996-07-31
SELECT*
FROM Orders OD
WHERE OD.OrderDate BETWEEN '1996-07-01' AND '1996-07-31';