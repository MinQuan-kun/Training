--Lấy ID, NAME, UnitPrice
SELECT 
    SP.ProductID,
	ProductName,
	UnitPrice
FROM Products SP

--Tìm giá trung bình
SELECT AVG(SP.UnitPrice)
FROM Products SP


--Lọc những sản phẩm có giá lớn hơn giá trung bình
SELECT 
    SP.ProductID,
	ProductName,
	UnitPrice
FROM Products SP
WHERE SP.UnitPrice >
(
    SELECT AVG(SP.UnitPrice)
    FROM Products SP
)