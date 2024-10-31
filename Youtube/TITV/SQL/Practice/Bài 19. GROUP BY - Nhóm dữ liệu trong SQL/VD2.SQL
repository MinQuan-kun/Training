-- Hãy tính giá đơn hàng trung bình theo mỗi nhà cung cấp sản phẩm
SELECT SP.SupplierID, AVG(SP.UnitPrice) AS "Giá trung bình"
FROM Products SP
GROUP BY SP.SupplierID