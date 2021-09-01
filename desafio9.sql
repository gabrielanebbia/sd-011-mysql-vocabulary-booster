SELECT CONCAT(firstname,' ', lastname) AS 'Nome completo', quantity AS 'Total de pedidos'
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
ON O.EmployeeID = E.EmployeeID
INNER JOIN w3schools.order_details AS OD
ON OD.OrderID = O.OrderID
ORDER BY `Total de pedidos`;
