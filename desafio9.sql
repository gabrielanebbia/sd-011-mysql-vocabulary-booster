SELECT 
CONCAT(empls.FirstName, ' ', empls.LastName) AS 'Nome completo',
COUNT(ord.EmployeeID) AS 'Total de pedidos'
FROM
w3schools.orders AS ord
INNER JOIN
w3schools.employees AS empls ON ord.EmployeeID = empls.EmployeeID
GROUP BY ord.EmployeeID
ORDER BY `Total de pedidos`;
