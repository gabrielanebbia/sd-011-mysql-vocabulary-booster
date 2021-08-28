SELECT CONCAT(e.firstname, ' ', e.lastname) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o ON o.EmployeeID = e.EmployeeID
GROUP BY e.employeeid
ORDER BY `Total de pedidos`;
