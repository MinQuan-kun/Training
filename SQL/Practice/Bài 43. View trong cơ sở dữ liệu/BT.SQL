-- 1. Tạo một View có tên "HighValueProducts" để hiện thị danh sách các sản
-- phẩm có giá trị cao hơn $50.
-- 2. Tạo một View có tên "CustomerOrders" để hiện thị thông tin về khách
-- hàng và số lượng hàng của họ.
-- 3. Tạo một View có tên "EmployeeSalesByYear" để hiện thị tổng doanh số
-- bán hàng của từng nhân viên theo năm.
-- 4. Tạo một View có tên "CategoryProductCounts" để hiện thị số lượng sản 
-- phẩm trong mỗi danh mục sản phẩm.
-- 5. Tạo một View có tên "CustomerOrderSummary" để hiện thị tổng giá trị
-- đặt hàng của mỗi khách hàng

--1
CREATE VIEW "HighValueProducts" AS
SELECT SP.*
FROM Products SP
WHERE SP.UnitPrice > 50

SELECT * 
FROM HighValueProducts

--2
CREATE VIEW  CustomerOrders AS
SELECT
	KH.CustomerID,
	KH.ContactName,
	COUNT(O.OrderID) AS "Tổng số đơn"
FROM Customers KH
JOIN Orders O ON O.CustomerID = KH.CustomerID
GROUP BY KH.CustomerID, KH.ContactName

SELECT * 
FROM CustomerOrders

--3
--Sử dụng CTE
WITH DOANHSONV AS
(
    SELECT 
        NV.EmployeeID,
        NV.FirstName + ' ' + NV.LastName AS "Tên nhân viên",
        YEAR(O.OrderDate) AS "Năm",
	    MONTH(O.OrderDate) AS "Tháng",
        SUM(OD.Quantity * OD.UnitPrice) AS "Tổng doanh thu "
    FROM Employees NV
    JOIN Orders O ON O.EmployeeID = NV.EmployeeID
    JOIN [Order Details] OD ON OD.OrderID = O.OrderID
    GROUP BY 
        NV.FirstName,
        NV.LastName,
        YEAR(O.OrderDate),
        MONTH(O.OrderDate)
)
SELECT * FROM  DOANHSONV

--Sử dụng VIEW
CREATE VIEW EmployeeSalesByYear AS
SELECT 
	NV.EmployeeID,
	NV.FirstName + ' ' + NV.LastName AS "Tên nhân viên",
	YEAR(O.OrderDate) AS "Năm",
	MONTH(O.OrderDate) AS "Tháng",
	SUM(OD.Quantity * OD.UnitPrice) AS "Tổng doanh thu "
FROM Employees NV
	JOIN Orders O ON O.EmployeeID = NV.EmployeeID
	JOIN [Order Details] OD ON OD.OrderID = O.OrderID
GROUP BY NV.EmployeeID,
	NV.FirstName,
    NV.LastName,
	YEAR(O.OrderDate),
	MONTH(O.OrderDate)

SELECT * FROM EmployeeSalesByYear

--4
CREATE VIEW CategoryProductCounts AS 
SELECT CT.CategoryID,
	COUNT(SP.ProductID) AS "Số lượng"
FROM Categories CT
JOIN Products SP ON SP.CategoryID = CT.CategoryID
GROUP BY CT.CategoryID

SELECT * FROM CategoryProductCounts

--5
CREATE VIEW CustomerOrderSummary AS
SELECT 
    O.CustomerID,
	O.OrderID,
	(OD.Quantity * (OD.UnitPrice * (1- OD.Discount))) AS "Tổng giá trị đặt hàng"
FROM Orders O
JOIN [Order Details] OD ON OD.OrderID = O.OrderID
GROUP BY 
    O.CustomerID,
	O.OrderID,
	(OD.Quantity * (OD.UnitPrice * (1- OD.Discount)))

SELECT * FROM  CustomerOrderSummary
