select
  CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
from
  w3schools.orders AS O
  INNER JOIN w3schools.employees AS E ON E.EmployeeID = O.EmployeeID
GROUP BY
  O.EmployeeID
ORDER BY
  COUNT(*) ASC;
