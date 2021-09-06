SELECT CONCAT(we.FIRSTNAME, ' ' , we.LASTNAME) AS 'Nome completo',
COUNT(we.EMPLOYEEID) AS 'Total de pedidos'
FROM w3schools.employees AS we
INNER JOIN w3schools.orders AS wo
ON we.EmployeeID = wo.EmployeeID
GROUP BY CONCAT(we.FIRSTNAME, ' ' , we.LASTNAME)
ORDER BY COUNT(we.EmployeeID);
