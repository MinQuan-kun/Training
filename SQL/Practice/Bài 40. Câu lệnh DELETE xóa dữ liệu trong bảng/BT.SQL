-- *Từ cơ sở dữ liệu NorthWind sử dụng SELECT INTO để tạo ra bảng tạm thời
-- trước khi thực hành câu lệnh DELETE

-- 1. Trong cơ sở dữ liệu NorthWind, làm thể nào để viết một câu DELETE để
-- xóa một đơn hàng cụ thể dựa trên OrderID? Ví dụ: Xóa đơn hàng có OrderID
-- là 10248

-- 2. Xóa tất cả sản phẩm từ bảng Products có số lượng tồn kho (UnitlnStock) bằng 0

-- 3. Xóa tất cả đơn hàng và chi tiết đặt hàng liên quan đến một khách hàng cụ thể
-- dựa trên CustomerID

--1
SELECT *
INTO SUS1
FROM Orders

DELETE FROM SUS1
WHERE SUS1.OrderID = '10248'

--2
DROP TABLE SUS1 -- XÓA BẢNG SUS1

SELECT *
INTO SUS1
FROM Products

DELETE FROM SUS1
WHERE SUS1.UnitsInStock = 0

--3
DELETE FROM SUS1
WHERE SUS1.OrderID IN (SELECT OrderID FROM Orders O
WHERE O.CustomerID = 'ALFKI'
GROUP BY OrderID
)