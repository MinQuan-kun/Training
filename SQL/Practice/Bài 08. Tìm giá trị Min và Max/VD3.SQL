-- Viết câu lệnh SQL tìm ra sản phẩm(lấy mã và tên sản phẩm)
-- có số lượng hàng tồn kho (UnitStock) lớn nhất 
SELECT SP.ProductID AS"Mã sản phẩm",
	ProductName AS "Tên sản phẩm"
FROM Products SP
WHERE SP.UnitsInStock = (SELECT MAX(UnitsInStock) FROM Products);
