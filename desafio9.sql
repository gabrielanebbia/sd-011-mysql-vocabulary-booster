select 
Concat(FirstName, ' ', LastName) 'Nome completo',
count(OrderID) AS 'Total de pedidos'
 from  employees AS e INNER JOIN orders AS o ON e.EmployeeID = o.EmployeeID 
 GROUP BY Concat(FirstName, ' ', LastName)
ORDER BY count(OrderID);
