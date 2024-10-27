-- Tính giá trị đơn hàng chi tiết cho tất các các sản phẩm
-- trong bảng OrderDetails
SELECT 
	*,
	UnitPrice * Quantity AS "Tổng tiền"
FROM [Order Details]