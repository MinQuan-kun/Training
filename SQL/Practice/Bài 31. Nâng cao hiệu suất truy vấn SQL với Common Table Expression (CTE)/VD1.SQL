-- Lấy thông tin về các sản phẩm
-- (Products) có cùng thể loại với
-- một sản phẩm cụ thể
WITH same_products AS
(
    SELECT
    CategoryID
    FROM Products 
    WHERE ProductName = "Product_Name"
) 

SELECT *
FROM Products SP
WHERE SP.CategoryID IN (SELECT CategoryID FROM same_products)