-- Hãy thống kê số lượng nhân viên
-- theo từng quốc gia khác nhau 
SELECT 
	NV.Country,
	COUNT(NV.EmployeeID)
FROM Employees NV
GROUP BY NV.Country