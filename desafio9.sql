SELECT CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM orders O
INNER JOIN
employees E 
ON E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos` ASC;
