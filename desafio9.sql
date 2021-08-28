SELECT
  CONCAT(employees.FirstName, ' ', employees.LastName) AS `Nome completo`,
  COUNT(*) AS `Total de pedidos`
FROM employees AS employees
INNER JOIN orders AS orders
  ON employees.EmployeeID = orders.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY `Total de pedidos`;
