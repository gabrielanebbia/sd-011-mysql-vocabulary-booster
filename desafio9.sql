SELECT CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
(
  SELECT COUNT(OrderID)
  FROM w3schools.orders AS o
  WHERE e.EmployeeID = o.EmployeeID
  GROUP BY EmployeeID
) AS `Total de pedidos`
FROM w3schools.employees AS e
WHERE EmployeeID IN (
  SELECT EmployeeID
  FROM w3schools.orders
)
ORDER BY `Total de pedidos`;
