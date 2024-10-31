-- Tính trung bình số lượng đặt hàng(Quantity)
-- của tất cả các sản phẩm trong bảng[Order Details]
SELECT AVG(Quantity) AS "Số lượng đặt hàng trung bình"
FROM [Order Details]