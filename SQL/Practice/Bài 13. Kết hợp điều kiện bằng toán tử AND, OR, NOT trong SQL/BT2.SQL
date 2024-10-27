-- Hãy liệt kê các sản phẩm có số lượng hàng trong kho
-- (UnitslStock) lớn hơn 20 và số lượng hàng trong đơn hàng
-- (UnitsOnOrder) nhỏ hơn 20.
SELECT *
FROM Products SP
WHERE SP.UnitsInStock > 20
AND UnitsOnOrder < 20