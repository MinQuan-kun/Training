--Tính Fib
WITH fibo(prev_n, n) AS (
    --Khởi tạo
	SELECT
        0 as prev_n,
        1 as n

    UNION ALL
    --Đệ quy
    SELECT
        n as prev_n,
        prev_n + n as n
    FROM fibo 
)
SELECT * FROM fibo
OPTION (MAXRECURSION 5);

--Tính giai thừa
WITH giaithua(stt, giaithuax) AS (
    --Khởi tạo
	SELECT
        1 as stt,
        1 as giaithuax

    UNION ALL
    --Đệ quy
    SELECT
        stt + 1 as stt
        giaithuax*(stt + 1) as giaithuax
    FROM giaithua 
)
SELECT * FROM giaithua
OPTION (MAXRECURSION 5);


--Sử dụng truy vấn đệ quy để tạo một cây cấu trúc quản lý của nhân viên trong bảng "Employees"
--Trong đó "ReportsTo" chỉ là mã của người quản lý.

declare @EmployeeId int
set @EmployeeId = 2;

WITH e_cte as (
    --Khởi tạo
    SELECT 
        e.EmployeeID,
        e.FirstName + ' ' + e.LastName as Name,
        e.ReportsTo as MannagerID,
        0 as Level
    FROM Employees e
	WHERE e.EmployeeID = @EmployeeId

    UNION ALL
    SELECT
        e1.EmployeeID,
        e1.FirstName + ' ' +e1.LastName as Name,
        e1.ReportsTo as MannagerID,
        Level + 1 as Level
    FROM Employees e1
    JOIN e_cte ON e1.ReportsTo = e_cte.EmployeeID
)
SELECT * FROM e_cte
OPTION(MAXRECURSION 500);

--KHÔNG CÓ BÀI TẬP, LUYỆN LẠI PHẦN VÍ DỤ