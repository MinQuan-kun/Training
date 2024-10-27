WITH short_e AS (
    SELECT NV.LastName,
        FirstName
    FROM Employees NV
)

SELECT *
FROM short_e