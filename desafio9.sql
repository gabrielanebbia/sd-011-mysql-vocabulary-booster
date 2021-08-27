SELECT CONCAT(firstName, ' ', lastName) AS 'Nome completo',
COUNT(o.orderID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o
ON e.employeeID = o.employeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
