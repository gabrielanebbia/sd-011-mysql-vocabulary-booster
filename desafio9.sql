SELECT CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
COUNT(od.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders AS od
INNER JOIN w3schools.employees AS emp ON od.EmployeeID = emp.EmployeeID
GROUP BY od.EmployeeID
ORDER BY COUNT(od.EmployeeID) ASC;
