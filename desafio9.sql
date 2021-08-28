SELECT CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
COUNT(O.CustomerID) AS 'Total de pedidos'
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
WHERE O.EmployeeID = E.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos` ASC;
