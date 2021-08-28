SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(od.Quantity) AS 'Total de pedidos'
FROM employees e
INNER JOIN orders o ON o.EmployeeID = e.EmployeeID
INNER JOIN order_details od ON od.OrderID = o.OrderID
GROUP BY e.EmployeeID
ORDER BY COUNT(od.Quantity) ASC;
