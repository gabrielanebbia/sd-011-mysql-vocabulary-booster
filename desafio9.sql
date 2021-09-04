SELECT
CONCAT(e.firstname, ' ', e.lastname) AS 'Nome completo',
COUNT(o.employeeid) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o
ON e.employeeid = o.employeeid
GROUP BY CONCAT(e.firstname, ' ', e.lastname)
ORDER BY COUNT(o.employeeid);
