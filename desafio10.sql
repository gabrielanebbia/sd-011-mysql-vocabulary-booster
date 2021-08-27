SELECT
CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
COUNT(orders_table.OrderID) AS 'Total de pedidos'
FROM
w3schools.employees AS employees_table
INNER JOIN
w3schools.orders AS orders_table ON employees_table.EmployeeID = orders_table.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
