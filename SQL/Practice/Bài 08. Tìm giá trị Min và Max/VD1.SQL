-- Viết câu lệnh SQL tìm giá thấp nhất của các sản phẩm trong bảng Products
SELECT MIN(p.UnitPrice) AS "Giá thấp nhất",
    Min(ProductName) AS "Sản phẩm"
FROM Products p