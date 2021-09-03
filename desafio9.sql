SELECT CONCAT(E.FirstName, ' ', E.LastName)
AS 'Nome completo',
COUNT(O.EmployeeID = E.EmployeeID) 
AS 'Total de pedidos'
FROM w3schools.orders O
LEFT JOIN w3schools.employees E
ON O.EmployeeID = E.EmployeeID
GROUP BY O.EmployeeID
ORDER BY COUNT(O.EmployeeID = E.EmployeeID);
