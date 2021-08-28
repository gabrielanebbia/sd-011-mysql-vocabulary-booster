SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.orders;
SELECT * FROM employees;
SELECT * FROM w3schools.suppliers;

SELECT 
CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(e.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
ORDER BY COUNT(e.EmployeeID);

