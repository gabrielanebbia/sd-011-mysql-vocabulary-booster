-- SELECT * FROM w3schools.employees;
-- SELECT * FROM w3schools.orders;

SELECT
CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome Completo',
COUNT(o.OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o ON e.EmployeeID = o.EmployeeID
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY COUNT(o.OrderID);
