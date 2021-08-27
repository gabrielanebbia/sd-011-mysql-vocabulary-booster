SELECT
CONCAT(E.FirstName, " " , E.LastName) AS "Nome Completo",
COUNT(O.EmployeeID) AS "Total de pedidos"
FROM w3schools.orders AS O
INNER JOIN w3schools.employees AS E
ON E.EmployeeID = O.EmployeeID
WHERE O.CustomerID = E.EmployeeID
GROUP BY O.EmployeeID
ORDER BY "Total de pedidos";
