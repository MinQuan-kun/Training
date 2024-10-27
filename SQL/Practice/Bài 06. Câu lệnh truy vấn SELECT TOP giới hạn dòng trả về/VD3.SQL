-- -- Viết câu lệnh SQL lấy ra các đơn hàng với quy định
-- -- là mã khách hàng không được trùng lặp, chỉ lấy
-- 5 dòng dữ liệu đầu tiên
SELECT DISTINCT TOP 5
		KH.CustomerID
FROM Customers KH
