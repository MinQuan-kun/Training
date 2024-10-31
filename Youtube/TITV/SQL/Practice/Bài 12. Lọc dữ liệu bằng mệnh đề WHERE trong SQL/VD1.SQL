-- Bạn hãy liệt kê tất cả các nhân viên từ thành phố London
--Sắp xếp theo LastName A-Z
SELECT 
	NV.EmployeeID,
	FirstName AS " Họ",
	LastName AS "Tên"
FROM Employees NV
WHERE NV.City = 'London'
ORDER BY NV.LastName 