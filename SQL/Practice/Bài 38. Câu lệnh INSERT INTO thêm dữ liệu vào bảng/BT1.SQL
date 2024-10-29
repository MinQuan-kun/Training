-- Viết một lệnh SELECT INTO để thêm một nhà cung cấp vào bảng Suppliers:
-- SupplierName: "New Supplier"
-- ContactName: "John Smith"
-- ContactTitle: "Sales Manager"
-- Address: "123 Supplier Street"
-- City: "New York"
-- Region: "NY"
-- PostalCode: "10001"
-- Country: "USA"
-- Phone: "555-555-5555"
-- FAX: "555-555-5556"
-- HomePage: "http://www.newsupplier.com"
ALTER TABLE Suppliers
ADD SupplierName NVARCHAR(100)
INSERT INTO Suppliers(SupplierName, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, HomePage)
VALUES 
('New Supplier', 
N'Đa cấp', 
'John Smith', 
'Sales Manager', 
'123 Supplier Street', 
'New York', 
'NY', 
10001, 
'USA', 
'555-555-5555', 
'555-555-5556', 
'http://www.newsupplier.com')