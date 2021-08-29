SELECT CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
COUNT(E.EmployeeID) AS 'Total de pedidos'
FROM w3schools.customers AS C
INNER JOIN w3schools.orders AS O
ON O.CustomerID = C.CustomerID
INNER JOIN w3schools.employees AS E
ON E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY COUNT(E.EmployeeID) ASC;
