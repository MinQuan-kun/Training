-- Hãy lọc ra các đơn hàng được
-- đặt hàng vào tháng 5 năm 1997
SELECT *
FROM Orders OD
WHERE 
	YEAR(OD.OrderDate) = 1997
	AND MONTH(OD.OrderDate) = 5
