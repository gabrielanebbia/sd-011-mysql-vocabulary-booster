SELECT 
CONCAT(e.FirstName, ' ', e.LastName) 'Nome completo',
COUNT(o.EmployeeId) 'Total de pedidos'
FROM w3schools.employees e
INNER JOIN w3schools.orders o ON e.EmployeeID = o.EmployeeID
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY COUNT(o.EmployeeId);
