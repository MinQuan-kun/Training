-- 1. Viết một Stored Procedure để truy xuất danh sách các đơn đặt hàng cho một khách hàng 
-- dựa trên tên khách hàng. Tham số dầu vào là tên khách hàng, và Stored Procedure sẽ trả
-- về danh sách các đơn đặt hàng liên quan.

-- 2. Viết một Stored Procedure để cập nhật số lượng hàng tồn kho cho một sản phẩm cụ thể 
-- dựa trên ID sản phẩm và số lượng mới. Stored Procedure này sẽ nhận vào ID sản phẩm 
-- và số lượng mới, sau đó cập nhật số lượng tồn kho trong bảng Products

-- 3.Viết một Stored Procedure để truy xuất danh sách các sản phẩm thuộc mục cụ thể 
-- và giới hạn số lượng sản phẩm trả về. Tham số đầu vào bao gồm ID danh mục và số 
-- lượng sản phẩm cần trả về.

--  4. Viết một Stored Procedure để truy xuất danh sách khách hàng dựa trên khu vực địa lý
-- (Region) hoặc quốc gia (Country) của họ. Tham số đầu vào sẽ là khu vực địa lý hoặc 
-- quốc gia và Stored Procedure sẽ trả về danh sách các khách hàng trong khu vực đó.

--1
USE NORTHWND 
GO
CREATE PROC DONHANG
	@KH_NAME NVARCHAR(50)
AS 
BEGIN
	SELECT *
	FROM Orders O
	JOIN Customers KH ON KH.CustomerID = O.CustomerID
	WHERE KH.ContactName = @KH_NAME
END

EXEC DONHANG @KH_NAME = 'Maria Anders'

--DROP PROC DONHANG

--2
USE NORTHWND
GO
CREATE PROC UpdatePStock
	@SP_ProductID INT,
	@SP_Stock DECIMAL(10,2)
AS
BEGIN
	UPDATE Products
	SET UnitsInStock = @SP_Stock
	WHERE ProductID = @SP_ProductID
END

EXEC UpdatePStock 5, 3

--DROP PROC  UpdatePStock

--3
USE NORTHWND
GO
CREATE PROC LISTSP
	@SP_Category INT,
	@SP_Num INT
AS
BEGIN
	SELECT TOP (@SP_Num) 
	SP.*
	FROM Products SP
	JOIN Categories CT ON CT.CategoryID = SP.CategoryID
	WHERE CT.CategoryID = @SP_Category
END

EXEC LISTSP 1, 12

--DROP PROC LISTSP

--4
USE NORTHWND
GO
CREATE PROC LISTKH
	@KH_FROM NVARCHAR(50)
AS
BEGIN
SELECT *
FROM Customers
WHERE Region LIKE @KH_From 
	OR Country LIKE @KH_FROM
END

EXEC LISTKH Germany

--DROP PROC LISTKH