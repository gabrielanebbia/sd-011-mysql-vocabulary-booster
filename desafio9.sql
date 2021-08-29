-- 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos
-- Monte uma query que exiba 02 colunas:
-- A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Total de pedidos" e exibir a quantidade total de pedidos feitos pela pessoa.
-- Ordene seus resultados pelo total de pedidos em ordem crescente.
SELECT CONCAT(emp.FirstName, ' ', emp.LastName) AS `Nome completo`,
COUNT(ord.OrderID) AS `Total de pedidos`
FROM w3schools.employees AS emp
INNER JOIN w3schools.orders AS ord
ON emp.EmployeeID = ord.EmployeeID
GROUP BY emp.EmployeeID
ORDER BY COUNT(ord.OrderID); 
