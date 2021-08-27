SELECT
CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
COUNT('Nome completo') AS 'Total de pedidos'
FROM w3schools.employees E
INNER JOIN w3schools.orders O ON O.EmployeeID = E.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
