-- 8 - Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package"

-- Use o banco w3schools como referência

-- Monte uma query que exiba 03 colunas:

-- 1. A primeira deve possuir o alias "Nome de contato" e exibir o nome de contato da pessoa consumidora.

-- 2. A segunda deve possuir o alias "Empresa que fez o envio" e exibir o nome da empresa que efetuou o envio do pedido.

-- 3. A terceira deve possuir o alias "Data do pedido" e exibir a data que o pedido foi feito.

-- Seus resultados devem estar ordenados pelo nome de contato da pessoa consumidora em ordem alfabética.

-- Em caso de empate no nome de contato, ordene os resultados pelo nome da empresa que fez o envio do produto em ordem alfabética.

-- Se houver empresas com o mesmo nome, ordene os resultados pela data do pedido em ordem crescente.

SELECT 
C.ContactName AS `Nome de Contato`,
S.ShipperName AS `Empresa que fez o envio`,
O.OrderDate AS `Data do pedido`
FROM 
w3schools.customers AS C
INNER JOIN 
w3schools.orders AS O
ON 
C.CustomerID = O.CustomerID
INNER JOIN
w3schools.shippers AS S
ON
O.ShipperID = S.ShipperID
WHERE
S.ShipperID IN ('1', '2')
ORDER BY
`Nome de Contato`, `Empresa que fez o envio`,`Data do pedido`;
