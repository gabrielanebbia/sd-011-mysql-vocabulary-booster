SELECT CONCAT(E.FirstName ,' ',E.LastName) AS "Nome completo",
COUNT(O.EmployeeID) AS "Total de pedidos"
FROM w3schools.orders AS O
INNER JOIN w3schools.employees AS E
ON E.EmployeeID = O.EmployeeID
GROUP BY E.EmployeeID
ORDER BY 2 ASC;
