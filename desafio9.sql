-- 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos

-- Use o banco w3schools como referência

-- Monte uma query que exiba 02 colunas:

-- 1. A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).

-- 2. A segunda deve possuir o alias "Total de pedidos" e exibir a quantidade total de pedidos feitos pela pessoa.

-- Ordene seus resultados pelo total de pedidos em ordem crescente.


SELECT
CONCAT(E.FirstName,' ', E.LastName) AS `Nome completo`,
COUNT(E.FirstName) AS `Total de pedidos`
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
ON E.EmployeeID = O.EmployeeID
GROUP BY E.FirstName, E.LastName
ORDER BY `Total de pedidos`;
