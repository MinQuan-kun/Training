--Viết câu lệnh SQL lấy ra dữ liệu khác nhau về họ cảu nhân viên (LastName)
--và các gọi danh hiệu lịch sự (TitleOfCourtesy) của nhân viên từ bảng Emplyees
SELECT DISTINCT em.LastName,
			TitleOfCourtesy
FROM Employees em