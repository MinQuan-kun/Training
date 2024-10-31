-- Hãy lọc ra các nhân viên(EmployeeID)
-- có tổng số đơn hàng lớn hơn hoặc bằng
-- 100, sắp xếp theo tổng số đơn hàng giảm dần
SELECT 
	OD.EmployeeID AS "Nhân viên",
	COUNT(OD.OrderID) AS " Tổng số đơn hàng"
FROM Orders OD
GROUP BY OD.EmployeeID
HAVING COUNT(OD.OrderID) >= 100
ORDER BY COUNT(OD.OrderID) DESC