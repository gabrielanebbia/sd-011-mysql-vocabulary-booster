SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(o.EmployeeId) AS 'Total de pedidos'
FROM orders AS o
INNER JOIN employees AS e
ON e.EmployeeId = o.EmployeeId
GROUP BY 1
ORDER BY 2;
