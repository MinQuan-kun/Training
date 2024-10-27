-- Đếm số lượng, tính tổng số lượng hàng tồn kho và trung bình giá của các sản phẩm trong bảng Products
SELECT 
	SP.ProductName AS "Tên sản phẩm", 
	COUNT(*) AS "Số lượng", 
	SUM(SP.UnitsInStock) AS "Số lượng hàng tồn kho",
	AVG(SP.UnitPrice) AS "Trung bình giá"
FROM Products SP
--Sử dụng GROUP BY để biết từng sản phẩm
GROUP BY SP.ProductName;
