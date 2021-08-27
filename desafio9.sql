SELECT CONCAT(empregados.FirstName, ' ', empregados.LastName) AS 'Nome completo', COUNT('Nome completo') AS 'Total de pedidos'
FROM w3schools.employees AS empregados
INNER JOIN w3schools.orders AS pedidos ON empregados.EmployeeId = pedidos.EmployeeId
GROUP BY CONCAT(empregados.FirstName, ' ', empregados.LastName)
ORDER BY COUNT('Nome completo');
