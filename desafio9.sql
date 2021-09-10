select CONCAT(employee.FirstName, ' ', employee.LastName) As 'Nome completo',
COUNT(orders.EMPLOYEEID) as 'Total de pedidos'
from w3schools.employees as employee
INNER JOIN 	w3schools.orders as orders
on employee.EmployeeID = orders.EmployeeID
GROUP BY employee.EMPLOYEEID
ORDER	BY `Total de pedidos`;
