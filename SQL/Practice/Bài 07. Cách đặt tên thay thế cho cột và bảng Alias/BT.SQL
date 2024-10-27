-- Viết câu lệnh SQL lấy ra các cột và đặt tên thay thế như sau
-- ProductName => Tên sản phẩm
-- SupplierID => Mã nhà cung cấp
-- CategoryID => Mã thể loại
-- Và đặt tên thay thế cho bảng Products là "p", sử dụng tên thay thế khi truy vấn các cột bên trên
-- Và chỉ lấy 5 sản phẩm đầu tiên trong bảng
SELECT TOP 5
    p.ProductName AS "Tên sản phẩm",
    SupplierID AS "Mã nhà cung cấp",
    CategoryID AS "Mã thể loại"
FROM Products p