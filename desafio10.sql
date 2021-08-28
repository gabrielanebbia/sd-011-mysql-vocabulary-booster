#Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00
#Exiba todos os produtos que já foram pedidos e que possuem uma média de quantidade nos pedidos registrados acima de 20.00.
#Use o banco w3schools como referência
#Monte uma query que exiba 04 colunas:
#A primeira deve possuir o alias "Produto" e exibir o nome do produto.
#A segunda deve possuir o alias "Mínima" e exibir a quantidade mínima que já foi pedida desse produto.
#A terceira deve possuir o alias "Máxima" e exibir a quantidade máxima que já foi pedida desse produto.
#A quarta deve deve possuir o alias "Média" e exibir a média de quantidade nos pedidos deste produto, arredondada para duas casas decimais.
#Os resultados devem estar ordenados pela média de quantidade nos pedidos em ordem crescente.
#Em caso de empate na média, os resultados devem ser ordenados pelo nome do produto em ordem alfabética.
SELECT p.ProductName, 
MIN(od.Quantity) AS "Mínima", 
MAX(od.Quantity) AS "Máxima", 
ROUND(AVG(od.Quantity),2) AS `Média` 
from w3schools.products as p
INNER JOIN w3schools.order_details as od
ON od.ProductID = p.ProductID
GROUP BY p.ProductName
HAVING AVG(od.Quantity) > 20
ORDER BY `Média`, p.ProductName;
