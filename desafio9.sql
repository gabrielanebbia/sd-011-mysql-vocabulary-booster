SELECT (CONCAT(t1.FirstName, ' ', t1.LastName)) AS 'Nome completo',
COUNT(t2.EmployeeID) AS 'Total de pedidos'
FROM employees AS t1
INNER JOIN orders AS t2
ON t1.EmployeeID = t2.EmployeeID
GROUP BY t2.EmployeeID
ORDER BY COUNT(t2.EmployeeID) ASC;
