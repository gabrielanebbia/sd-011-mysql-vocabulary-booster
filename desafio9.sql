SELECT 
CONCAT(e.FirstName, " ", e.LastName) AS "Nome completo",
COUNT(od.Quantity) AS "Total de pedidos"
FROM w3schools.employees e
INNER JOIN w3schools.orders o ON o.EmployeeID = e.EmployeeID
INNER JOIN w3schools.order_details od ON od.OrderId = o.OrderId
GROUP BY e.EmployeeID
ORDER BY COUNT(od.Quantity) ASC;
