-- 8 - Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package"
-- Exiba todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package".
-- Use o banco w3schools como referência
-- Monte uma query que exiba 03 colunas:
-- A primeira deve possuir o alias "Nome de contato" e exibir o nome de contato da pessoa consumidora.
-- A segunda deve possuir o alias "Empresa que fez o envio" e exibir o nome da empresa que efetuou o envio do pedido.
-- A terceira deve possuir o alias "Data do pedido" e exibir a data que o pedido foi feito.
-- Seus resultados devem estar ordenados pelo nome de contato da pessoa consumidora em ordem alfabética.
-- Em caso de empate no nome de contato, ordene os resultados pelo nome da empresa que fez o envio do produto em ordem alfabética.
-- -- Se houver empresas com o mesmo nome, ordene os resultados pela data do pedido em ordem crescente.
SELECT cus.ContactName AS `Nome de contato`,
ShipperName AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM  w3schools.customers AS cus
INNER JOIN w3schools.orders AS ord
ON cus.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS sh
ON ord.ShipperID = sh.ShipperID
WHERE sh.ShipperName IN ("Speedy Express", "United Package")
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
