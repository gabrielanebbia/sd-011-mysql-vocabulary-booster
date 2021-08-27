-- 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80

-- Use o banco w3schools como referência

-- Monte uma query que exiba 02 colunas:

-- 1. A primeira deve possuir o alias "Produto" e exibir o nome do produto.

-- 2. A segunda deve possuir o alias "Preço" e exibir o preço desse produto.

-- Os resultados devem estar ordenados pelo nome do produto em ordem alfabética.

SELECT
P.ProductName AS Produto,
P.Price AS Preço
FROM 
w3schools.products AS P
INNER JOIN
w3schools.order_details AS OD
ON P.ProductID = OD.ProductID
WHERE OD.Quantity > 80
ORDER BY Produto ASC;
