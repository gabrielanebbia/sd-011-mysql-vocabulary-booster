SHOW TABLES;
SHOW COLUMNS FROM orders;
SELECT * FROM orders;
SELECT * FROM customers WHERE ContactName LIKE '%Anne%';
SELECT
CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(e.EmployeeID) AS 'Total de pedidos'
FROM
employees AS e
INNER JOIN
orders AS o
ON o.EmployeeID = e.EmployeeID
GROUP BY
e.EmployeeID
ORDER BY
2 ASC;
