SELECT wp.PRODUCTNAME AS 'Produto',
wp.PRICE AS 'Preço'
FROM 
w3schools.products AS wp,
w3schools.order_details AS word
WHERE word.ProductID = wp.ProductID AND word.Quantity > 80
ORDER BY wp.PRODUCTNAME;
