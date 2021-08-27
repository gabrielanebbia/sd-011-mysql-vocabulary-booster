SELECT
  CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
  COUNT(o.OrderID) AS 'Total de pedidos'
FROM
  w3schools.orders AS o
  INNER JOIN w3schools.employees AS e ON o.EmployeeID = e.EmployeeID
GROUP BY
  CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY
  COUNT(o.OrderID);
