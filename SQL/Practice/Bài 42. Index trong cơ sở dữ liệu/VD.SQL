--Đánh index cho cột "CustomerName" trong bảng "Customers"
CREATE INDEX idx_CustomerName ON Customers (CustomerName);

--Đánh index cho cột ProductName trong bảng "Products"
CREATE INDEX idx_ProductName ON Products (ProductName);

--Tạo composite index cho cột "CustomerID" và "OrderDate" trong bảng "Orders"
CREATE INDEX idx_CustomerID_OrderDate ON Orders (CustomerID, OrderDate);

