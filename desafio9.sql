SELECT CONCAT(t1.FirstName,' ', t1.LastName) AS 'Nome completo',
COUNT(OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS t1
INNER JOIN w3schools.orders AS t2 ON t1.EmployeeID = t2.EmployeeID
GROUP BY t2.EmployeeID
ORDER BY COUNT(OrderID) ASC;