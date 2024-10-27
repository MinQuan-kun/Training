-- 1.Hãy liệt kê các nhân viên 
-- không phải là nữ từ bảng nhân viên
SELECT *
FROM Employees NV
WHERE NV.TitleOfCourtesy NOT IN ('Ms.' , 'Mrs.')
-- 2.Hãy liệt kê các nhân viên là nữ
-- từ bảng nhân viên
SELECT *
FROM Employees NV
WHERE NV.TitleOfCourtesy IN ('Ms.' , 'Mrs.')
