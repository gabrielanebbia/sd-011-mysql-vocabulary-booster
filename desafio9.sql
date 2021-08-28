SELECT concat(e.FirstName, ' ', e.LastName) AS 'Nome completo',
count(o.OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders o ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY count(o.OrderID) ASC;
