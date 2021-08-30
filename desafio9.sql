SELECT
CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
COUNT(O.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS O
LEFT JOIN w3schools.employees AS E
ON O.EmployeeID = E.EmployeeID
GROUP BY O.EmployeeId
ORDER BY `Total de pedidos`;
