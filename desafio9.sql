SELECT (CONCAT(a.FirstName, ' ', a.LastName)) AS `Nome completo`, 
COUNT(b.OrderId) AS "Total de pedidos" 
FROM employees AS a
INNER JOIN orders AS b
ON a.EmployeeID = b.EmployeeID
GROUP BY (CONCAT(a.FirstName, ' ', a.LastName))
ORDER BY COUNT(b.OrderId);
