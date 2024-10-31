-- Hãy cho biết tuổi đời của nhân viên lớn nhất công ty
-- Gợi ý: ai có ngày sinh càng nhỏ thì người đó càng lớn tuổi
SELECT 
NV.FirstName AS "Tên",
BirthDate AS "Ngày sinh",
FLOOR(DATEDIFF(DAY, NV.BirthDate, GETDATE()) / 365.0) AS "Tuổi"
FROM Employees NV
WHERE NV.BirthDate = (SELECT MIN(BirthDate) FROM Employees);