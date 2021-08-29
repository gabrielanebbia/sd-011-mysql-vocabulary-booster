SELECT 
CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(ord.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS e

INNER JOIN w3schools.orders AS ord
ON ord.EmployeeID = e.EmployeeID

GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
