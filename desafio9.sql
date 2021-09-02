-- 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos
SELECT
  CONCAT(WE.FirstName, ' ', WE.LastName) AS 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
FROM
  w3schools.orders AS WO
  INNER JOIN w3schools.employees AS WE ON WE.EmployeeID = WO.EmployeeID
GROUP BY WO.EmployeeID
ORDER BY COUNT(*) ASC;
