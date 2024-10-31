--Tạo một stored procedure dể lấy thông tin
-- về sản phẩm dựa trên tên sản phẩm cung cấp
CREATE PROC GetProductByName
    @ProductNames NVarchar(100)
AS 
BEGIN
    SELECT *
    FROM Products SP
    WHERE SP.ProductName = @ProductNames
END

EXEC GetProductByName 'Chai'
--DROP PROC GetProductByName

-- Tạo một stored procedure để tính tổng doanh số bán hàng
-- Của một nhân viên dựa trên EmployeeID

CREATE PROC CALMONEYE
    @e_EmployeeID INT
AS
BEGIN
	SELECT 
	SUM(OD.Quantity * (OD.UnitPrice *(1 - OD.Discount))) AS "Doanh số"
	FROM Orders O
	JOIN [Order Details] OD ON OD.OrderID = O.OrderID
	WHERE O.EmployeeID = @e_EmployeeID
END

EXEC CALMONEYE 1

--DROP PROC CALMONEYE

--Tạo một stored procedure để thêm một khách hàng vào bảng Customers
USE NORTHWND
GO
CREATE PROC AddCus 
	@KH_CustomerID NVARCHAR(5),
	@KH_CompanyName NVARCHAR(40),
	@KH_ContactName NVARCHAR(40),
	@KH_ContactTitle NVARCHAR(40)
AS
BEGIN
	INSERT INTO Customers(CustomerID, CompanyName, ContactName, ContactTitle)
	VALUES (@KH_CustomerID,  UPPER(@KH_CompanyName), @KH_ContactName, @KH_ContactTitle)
END

EXEC AddCus LIMIT, Myself, Lmaolmaolmao, Suss 

--DROP PROC AddCus
SELECT * FROM Customers

--Tạo một stored procedure để cập nhật giá của 
-- một sản phẩm tăng thêm hoặc giảm xuống
USE NORTHWND
GO
CREATE PROC UpdatePrice
    @SP_ProductID INT,
    @SP_Price DECIMAL(10,2)
AS
BEGIN
	UPDATE Products 
	SET UnitPrice = UnitPrice + @SP_Price
	WHERE ProductID = @SP_ProductID
END

EXEC UpdatePrice 78, 200000

--DROP PROC UpdatePrice
SELECT *
FROM Products