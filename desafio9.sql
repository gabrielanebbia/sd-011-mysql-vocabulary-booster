SELECT
  CONCAT(E.FirstName, ' ', E.LastName) AS `Nome Completo`,
  COUNT(*) AS `Total de pedidos`
FROM employees AS E
INNER JOIN orders AS O
  ON E.EmployeeID = O.EmployeeID
GROUP BY E.EmployeeID
ORDER BY `Total de pedidos`;
