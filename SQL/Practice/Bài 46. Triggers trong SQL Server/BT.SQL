-- Bài tập 1: Bổ sung thêm cột LastModified và tạo một trigger để sau khi một 
-- sản phẩm được thêm hoặc cập nhật vào bảng "Products" tự động cập nhật trường
-- "LastModified" với ngày và giờ hiện tại.

-- Bài tập 2: Tạo một trigger "INSTEAD OF DELETE" để kiểm tra xem 
-- khách hàng có đơn hàng (Orders) không. Nếu có, trigger không cho phép 
-- xóa khách hàng. Nếu không có đơn hàng liên quan, trigger thực hiện xóa 
-- khách hàng.

-- Bài tập 3: Tạo một trigger trong cơ sở dữ liệu Northwind để kiểm tra và 
-- không cho phép đặt hàng (Order) với số lượng sản phẩm lớn hơn số lượng tồn kho

--1
ALTER TABLE Products
ADD LastModified DATETIME

CREATE TRIGGER CHECKDAY
ON Products
AFTER UPDATE, INSERT
AS
BEGIN
	SET NOCOUNT ON
	UPDATE Products
	SET LastModified = GETDATE()
	FROM Products P
	INNER JOIN inserted I ON I.ProductID = P.ProductID
END

INSERT INTO Products (ProductName,CategoryID, SupplierID, QuantityPerUnit)
VALUES (N'Người cá', 11, 30, 2000)

SELECT * FROM Products

--2
CREATE TRIGGER DELETEKH 
ON Customers
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra nếu khách hàng có đơn hàng trong bảng Orders
    IF EXISTS (
        SELECT 1 
        FROM Orders O
        JOIN DELETED D ON O.CustomerID = D.CustomerID
    )
    BEGIN
        -- Nếu tồn tại đơn hàng, in ra thông báo lỗi và không thực hiện xóa
        RAISERROR('Không thể xóa khách hàng vì họ có đơn hàng liên quan.', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        -- Nếu không có đơn hàng liên quan, cho phép xóa khách hàng
        DELETE FROM Customers
        WHERE CustomerID IN (SELECT CustomerID FROM DELETED);
    END
END

DELETE FROM Customers
WHERE CustomerID = 'VIETP'
--Kiểm tra 
SELECT * FROM Customers
--Thêm trước khi xóa
INSERT INTO Customers(CustomerID, CompanyName)
VALUES ('VIETP', 'Myself')
INSERT INTO Orders(CustomerID, EmployeeID)
VALUES ('VIETP',5)


-- 3

CREATE TRIGGER PVO
ON [Order Details]
AFTER INSERT
AS
BEGIN 
	SET NOCOUNT ON

	IF EXISTS(
		SELECT 1
		FROM inserted i
		JOIN Products SP ON SP.ProductID = i.ProductID
		WHERE SP.UnitsInStock < i.Quantity
	)
	BEGIN
		RAISERROR('Lỗi! Số lượng tồn kho không đủ để đặt', 16, 1);
		ROLLBACK TRANSACTION;
	END
END
