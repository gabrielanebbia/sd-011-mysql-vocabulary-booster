SELECT 
CONCAT(em.FirstName, ' ', em.LastName) AS 'Nome completo',
COUNT(ord.OrderID) AS 'Total de pedidos'
FROM w3schools.employees em
INNER JOIN w3schools.orders ord
ON em.EmployeeID = ord.EmployeeID
GROUP BY em.EmployeeID 
ORDER BY `Total de pedidos`;
