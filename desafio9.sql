SELECT
  CONCAT(E.FirstName, ' ', E.LastName) AS `Nome Completo`,
  COUNT(O.EmployeeID) AS `Total de pedidos`
FROM orders AS O
INNER JOIN employees AS E
  ON E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos`;
