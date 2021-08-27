SELECT P.ProductName Produto, P.Price Preço FROM products P
WHERE EXISTS (
SELECT * FROM order_details OD
WHERE OD.Quantity > 80 AND P.ProductID = OD.ProductID 
)
ORDER BY ProductName;
