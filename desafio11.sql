SELECT P.ProductName AS 'Produto',
(
SELECT MIN(Quantity)
FROM w3schools.order_details
WHERE P.ProductID = ProductID
) AS 'Mínima',
(
SELECT MAX(Quantity)
FROM w3schools.order_details
WHERE P.ProductID = ProductID
) AS 'Máxima',
(
SELECT ROUND(AVG(Quantity), 2)
FROM w3schools.order_details
WHERE P.ProductID = ProductID
) AS 'Média'
FROM w3schools.products P
WHERE (
SELECT AVG(Quantity)
FROM w3schools.order_details
WHERE P.ProductID = ProductID
) > 20
ORDER BY (
SELECT AVG(Quantity)
FROM w3schools.order_details
WHERE P.ProductID = ProductID
);
