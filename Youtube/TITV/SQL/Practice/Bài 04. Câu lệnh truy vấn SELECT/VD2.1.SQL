-- Viết câu lệnh SQL lấy ra tên sản phẩm, giá bán trên mỗi đơn vị, số lượng sản phẩm trên mỗi đơn vị
SELECT pr.ProductName,
    UnitPrice,
    QuantityPerUnit,
FROM Products pr;