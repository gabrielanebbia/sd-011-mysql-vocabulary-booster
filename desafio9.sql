SELECT concat(em.FirstName, ' ', em.LastName) AS 'Nome completo',
  COUNT(od.EmployeeID = em.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders AS od
  LEFT JOIN w3schools.employees AS em ON od.EmployeeID = em.EmployeeID
GROUP BY od.EmployeeID
ORDER BY COUNT(od.EmployeeID = em.EmployeeID) ASC;
