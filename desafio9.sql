SELECT CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
COUNT(ord.OrderID) AS 'Total de pedidos'
FROM w3schools.employees emp
INNER JOIN w3schools.orders ord
ON emp.EmployeeID = ord.EmployeeID
GROUP BY CONCAT(emp.FirstName, ' ', emp.LastName)
ORDER BY COUNT(ord.OrderID);
