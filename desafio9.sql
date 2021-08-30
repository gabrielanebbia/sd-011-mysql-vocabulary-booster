SELECT CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.employees AS e
INNER JOIN
w3schools.orders AS ord
ON e.EmployeeID = ord.EmployeeID
GROUP BY e.EmployeeID
ORDER BY COUNT(*);
