SELECT CONCAT(E.FirstName, ' ', E.Lastname) AS 'Nome completo',
(
SELECT COUNT(EmployeeID)
FROM w3schools.orders
WHERE EmployeeID = E.EmployeeID
) AS 'Total de pedidos'
FROM w3schools.employees E
WHERE (
SELECT COUNT(EmployeeID)
FROM w3schools.orders
WHERE EmployeeID = E.EmployeeID
) > 0
ORDER BY (
SELECT COUNT(EmployeeID)
FROM w3schools.orders
WHERE EmployeeID = E.EmployeeID
);
