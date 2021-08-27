SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(o.EmployeeID = e.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders o
LEFT JOIN w3schools.employees e
ON o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID
ORDER BY COUNT(o.EmployeeID = e.EmployeeID) ASC;
