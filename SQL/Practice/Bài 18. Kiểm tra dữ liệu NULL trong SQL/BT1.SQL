-- Hãy Lấy ra tất cả các đơn hàng
-- chưa được giao và có khu vực
-- giao hàng (ShipRegion) không bị NULL
SELECT*
FROM 
Orders OD
WHERE 
OD.ShippedDate IS NULL 
AND OD.ShipRegion IS NOT NULL