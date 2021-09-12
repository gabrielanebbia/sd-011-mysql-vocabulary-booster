SELECT CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
COUNT(O.EmployeeID) AS 'Total de pedidos' 
FROM employees AS E
INNER JOIN orders AS O
ON O.EmployeeID = E.EmployeeID
GROUP BY O.EmployeeID
ORDER BY COUNT(O.EmployeeID);
