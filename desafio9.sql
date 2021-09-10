
SELECT t.`Nome completo`, t.`Total de pedidos` FROM ( SELECT CONCAT(FirstName, ' ', LastName) AS `Nome completo`, ( SELECT COUNT(EmployeeID) FROM w3schools.orders WHERE EmployeeID = w3schools.employees.EmployeeID) AS `Total de pedidos` FROM w3schools.employees) AS t WHERE t.`Total de pedidos` > 0 ORDER BY t.`Total de pedidos`;
