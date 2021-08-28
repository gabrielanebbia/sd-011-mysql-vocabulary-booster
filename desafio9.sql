SELECT
CONCAT(e.FirstName, ' ', e.Lastname) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees e
INNER JOIN w3schools.orders o
ON e.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;
