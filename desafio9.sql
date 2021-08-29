SELECT 
CONCAT(b.FirstName, ' ', b.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders AS a
INNER JOIN w3schools.employees AS b ON b.EmployeeID = a.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
