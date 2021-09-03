SELECT 
CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
COUNT(O.OrderID) AS 'Total de pedidos'
FROM
w3schools.employees E,
w3schools.orders O
WHERE
E.EmployeeID = O.EmployeeID
GROUP BY E.EmployeeID
ORDER BY `Total de pedidos`;
