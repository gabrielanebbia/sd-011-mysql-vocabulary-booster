SELECT CONCAT(E.firstName, ' ', E.lastName) AS 'Nome completo', 
COUNT(*) AS 'Total de pedidos' FROM w3schools.orders AS O
INNER JOIN w3schools.employees AS E ON E.employeeID = O.employeeID
GROUP BY O.employeeID
ORDER BY `Total de pedidos`;
