SELECT CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
COUNT(emp.FirstName) AS 'Total de pedidos'
FROM w3schools.employees AS emp
RIGHT JOIN w3schools.orders AS ord
ON ord.EmployeeID = emp.EmployeeID
GROUP BY CONCAT(emp.FirstName, ' ', emp.LastName)
ORDER BY COUNT(emp.FirstName),CONCAT(emp.FirstName, ' ', emp.LastName);
