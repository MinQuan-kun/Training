-- Lấy ra tất cả các đơn hàng chưa được giao
-- (ShippedDate => NULL)
SELECT *
FROM Orders OD
WHERE  OD.ShippedDate IS NULL