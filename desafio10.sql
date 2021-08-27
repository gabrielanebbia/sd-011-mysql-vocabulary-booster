-- 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00

-- Use o banco w3schools como referência

-- Monte uma query que exiba 04 colunas:

-- 1. A primeira deve possuir o alias "Produto" e exibir o nome do produto.

-- 2. A segunda deve possuir o alias "Mínima" e exibir a quantidade mínima que já foi pedida desse produto.

-- 3. A terceira deve possuir o alias "Máxima" e exibir a quantidade máxima que já foi pedida desse produto.

-- 4. A quarta deve deve possuir o alias "Média" e exibir a média de quantidade nos pedidos deste produto, arredondada para duas casas decimais.

-- Os resultados devem estar ordenados pela média de quantidade nos pedidos em ordem crescente.

-- Em caso de empate na média, os resultados devem ser ordenados pelo nome do produto em ordem alfabética.

SELECT
P.ProductName AS Produto,
MIN(OD.Quantity) AS Mínima,
MAX(OD.Quantity) AS Máxima,
ROUND(AVG(OD.Quantity), 2) AS Média
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS OD
ON P.ProductID = OD.ProductID
GROUP BY Produto
HAVING AVG(OD.Quantity) > 20
ORDER BY Média, Produto;
