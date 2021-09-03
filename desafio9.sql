SELECT CONCAT(empl.FirstName, ' ', empl.LastName) AS 'Nome completo',
COUNT(ords.OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS empl

INNER JOIN w3schools.orders AS ords
ON empl.EmployeeID = ords.EmployeeID

GROUP BY empl.EmployeeID
ORDER BY COUNT(ords.OrderID) ASC;
