SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo', COUNT(o.EmployeeId) AS 'Total de pedidos'
FROM w3schools.employees e
INNER JOIN w3schools.orders o
ON o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;
