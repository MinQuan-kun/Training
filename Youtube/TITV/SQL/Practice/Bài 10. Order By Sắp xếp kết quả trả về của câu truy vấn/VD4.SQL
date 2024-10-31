-- Hãy lấy ra một sản phẩm có số lượng bán câu nhất
-- từ bảng [Order Details].
-- Không được dùng MAX
SELECT TOP 1* 
FROM [Order Details] OD
ORDER BY OD.Quantity DESC;