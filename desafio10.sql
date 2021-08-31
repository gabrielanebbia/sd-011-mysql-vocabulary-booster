SELECT P.ProductName AS 'Produto',
(
SELECT MIN(OD.Quantity)
FROM w3schools.order_details OD
WHERE P.ProductID = OD.ProductID
) AS 'Mínima',
(
SELECT MAX(OD.Quantity)
FROM w3schools.order_details OD
WHERE P.ProductID = OD.ProductID
) AS 'Máxima',
(
SELECT ROUND(AVG(OD.Quantity), 2)
FROM w3schools.order_details OD
WHERE P.ProductID = OD.ProductID
) AS 'Média'
FROM w3schools.products P
WHERE (
SELECT AVG(OD.Quantity)
FROM w3schools.order_details OD
WHERE P.ProductID = OD.ProductID
) > 20
ORDER BY (
SELECT AVG(OD.Quantity)
FROM w3schools.order_details OD
WHERE P.ProductID = OD.ProductID
);
