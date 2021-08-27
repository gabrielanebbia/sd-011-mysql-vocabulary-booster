SELECT PR.ProductName AS Produto, PR.Price AS Preço FROM products AS PR
INNER JOIN order_details AS OD
ON PR.ProductID = OD.ProductID
WHERE OD.Quantity > 80
ORDER BY ProductName;
