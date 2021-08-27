-- 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma
-- quantidade desse produto maior que 80
SELECT 
      P.ProductName as 'Produto',
      P.Price as 'Preço'
FROM w3schools.order_details as OD
INNER JOIN w3schools.products as P
ON OD.ProductID = P.ProductID
GROUP BY OD.ProductID
HAVING MAX(OD.Quantity) > 80
ORDER BY P.ProductName;
