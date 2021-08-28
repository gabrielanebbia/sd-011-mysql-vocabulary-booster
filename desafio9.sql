SELECT CONCAT(e.FirstName, ' ', e.LastName) 'Nome completo',
COUNT(*) 'Total de pedidos'
FROM w3schools.employees e
INNER JOIN w3schools.orders o 
ON o.EmployeeID = e.EmployeeID
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY COUNT(*);
