-- Hãy lọc các đơn đặt hàng đã được giao vào tháng 5
-- và sắp xếp tăng dần theo năm 
SELECT*
FROM Orders OD
WHERE MONTH(OD.OrderDate) = 5
ORDER BY YEAR(OD.OrderDate) ASC