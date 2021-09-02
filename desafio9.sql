SELECT (CONCAT(n.FirstName, ' ', n.LastName)) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS n
INNER JOIN w3schools.orders AS o
ON n.EmployeeID = o.EmployeeID
GROUP BY (CONCAT(n.FirstName, ' ', n.LastName))
ORDER BY COUNT(o.EmployeeID);
