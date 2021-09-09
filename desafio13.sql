SELECT
p.productname AS 'Produto',
p.price AS 'Preço'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o_d
WHERE p.productid = o_d.productid AND o_d.quantity > 80;
