-- Lấy ra tất cả các đơn hàng chi tiết được giảm giá nhiều hơn 10%
-- (Discount > 0.1)
SELECT *
FROM [Order Details] OD
WHERE OD.Discount > 0.1