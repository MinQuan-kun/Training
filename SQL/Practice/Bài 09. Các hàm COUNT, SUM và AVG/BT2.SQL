-- Từ bảng [Order DEtails] hãy tính trung bình cho cột UnitPrice,
-- tính tổng cho cột Quantity
SELECT AVG(UnitPrice) AS "Giá trung bình",
		SUM(Quantity) AS "Tổng"
FROM [Order Details] 