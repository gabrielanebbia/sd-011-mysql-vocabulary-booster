select concat(e.FirstName, ' ', e.LastName) as `Nome completo`, count(*) as `Total de pedidos`
from w3schools.orders as o
inner join w3schools.employees as e on e.EmployeeID = o.EmployeeID
group by o.EmployeeID
order by `Total de pedidos`;
