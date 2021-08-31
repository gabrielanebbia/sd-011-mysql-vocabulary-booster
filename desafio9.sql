SELECT
CONCAT(we.FirstName, ' ', we.LastName ) AS 'Nome completo',
COUNT(we.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS we
INNER JOIN w3schools.orders AS wo
ON we.EmployeeID = wo.EmployeeID
GROUP BY CONCAT(we.FirstName, ' ', we.LastName)
ORDER BY COUNT(we.EmployeeID);
