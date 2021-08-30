SELECT
CONCAT(E.FirstName, " " , E.LastName) AS "Nome Completo",
COUNT(*) AS "Total de pedidos"
FROM w3schools.orders AS O
INNER JOIN w3schools.employees AS E
ON E.EmployeeID = O.EmployeeID
GROUP BY `Nome Completo`
ORDER BY COUNT(*);
