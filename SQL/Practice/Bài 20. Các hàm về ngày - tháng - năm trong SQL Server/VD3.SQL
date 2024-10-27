-- Lấy danh sách các đơn hàng
-- được đặt vào ngày 4 tháng 9 năm 1996
SELECT*
FROM Orders OD
WHERE 	
	YEAR(OD.OrderDate) = 1996
	AND MONTH(OD.OrderDate) = 9
	AND DAY(OD.OrderDate) = 4
