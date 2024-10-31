--Trigger khi insert sẽ chuyển productName về viết hoa toàn bộ:

CREATE TRIGGER MakeProductNameUppercase
ON Products 
AFTER INSERT 
AS 
BEGIN 
    SET NOCOUNT ON;

    UPDATE Products
    SET ProductName = UPPER(i.ProductName)
    FROM inserted i
    WHERE Products.ProductID = i.ProductID
END;

INSERT  Products(ProductName, SupplierID, CategoryID)
VALUES (N'Bút chì', 30, 11)

SELECT *
FROM Products


--Mỗi khi đơn hàng vừa đặt thành công thì phải giảm số lượng sản phẩm
CREATE TRIGGER UPDATESPINVEN
ON [Order Details]
AFTER INSERT
AS 
BEGIN
	UPDATE Products 
	SET  UnitsInStock = UnitsInStock - (SELECT Quantity
	FROM inserted 
	WHERE Products.ProductID = inserted.ProductID
	)
	WHERE Products.ProductID IN (SELECT ProductID 
	FROM inserted)
END

INSERT INTO [Order Details](OrderID, ProductID, UnitPrice, Quantity, Discount)
VALUES (10248, 1, 20, 2, 0)
