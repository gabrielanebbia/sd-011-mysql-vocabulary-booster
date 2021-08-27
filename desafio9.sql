SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM orders AS o
INNER JOIN employees AS e
ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
