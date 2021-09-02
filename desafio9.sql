SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM orders AS o
INNER JOIN employees AS e ON e.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID ORDER BY COUNT(o.EmployeeID);
