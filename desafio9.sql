SELECT CONCAT(Emp.FirstName, ' ', Emp.LastName) AS `Nome completo`,
Ord_Details.Quantity AS `Total de Pedidos`
FROM w3schools.employees AS Emp
INNER JOIN w3schools.orders AS Ord
ON Ord.EmployeeID = Emp.EmployeeID
INNER JOIN w3schools.order_details AS Ord_Details
ON Ord.OrderID = Ord_Details.OrderID
GROUP BY `Nome completo`
ORDER BY `Total de Pedidos` ASC;
