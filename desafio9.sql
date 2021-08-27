SELECT 
CONCAT(e.FirstName, " ", e.LastName) AS "Nome completo",
COUNT(o.OrderID) AS "Total de pedidos"
FROM w3schools.employees e
INNER JOIN w3schools.orders o ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY COUNT(o.OrderID) ASC;
