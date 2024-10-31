--Thêm một khách hàng
INSERT INTO Customers(CustomerID, CompanyName, ContactName, Phone)
VALUES ('KH123', 'LmaoLmaoLmao', N'Minh Quân', '0902291680');

--Nếu có bảng mà không có tên cột thì phải nhập đủ thông tin
INSERT INTO Customers
VALUE('KH123', 'LmaoLmaoLmao', N'Minh Quân', '0902291680', '-', null, null, null, null)

--Thêm nhiều khách hàng cùng lúc
INSERT INTO Customers(CustomerID, CompanyName, ContactName, Phone)
VALUES 
    ('KH121', 'LmaoLmaoLmao', N'Minh Quân', '0902291680'),
    ('KH122', 'LmaoLmaoLmao', N'Minh Quân', '0902291680'),
    ('KH123', 'LmaoLmaoLmao', N'Minh Quân', '0902291680'),
    ('KH124', 'LmaoLmaoLmao', N'Minh Quân', '0902291680'),
    ('KH125', 'LmaoLmaoLmao', N'Minh Quân', '0902291680');

--Thêm một sản phẩm mới
INSERT INTO Products(ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock )
VALUES (N'Cá mập', 30, 8, 5, 200000, 1)
--Vì cột ProductID đã được tự động tăng lên nên ta sẽ bỏ qua việc nhập ProductID

--Thêm một đơn hàng vào bảng Orders
INSERT INTO Orders(CustomerID, EmployeeID, OrderDate, ShipVia)
VALUES ('HANAR', 3, '2024-10-29', 2)

--Chèn nhiều khách hàng vào bảng Customers bằng cách sử dụng câu lệnh INSERT INTO và giá trị VALUES
INSERT INTO Customers(CustomerID, ContactName, CompanyName, City, Country)
VALUES 
	('VIETP', N'Việt Phương', 'Myself', N'Hồ Chí Minh', N'Việt Nam'),
	('THAIB', N'Thái Bình', 'Myself', N'Hồ Chí Minh', N'Việt Nam'),
	('MINHT', N'Minh Tín', 'Myself', N'Hồ Chí Minh', N'Việt Nam'),
	('MINHH', N'Minh Hoàng', 'Myself', N'Hồ Chí Minh', N'Việt Nam'),
	('PHUTY', N'Phú Tỷ', 'Myself', N'Hồ Chí Minh', N'Việt Nam');
