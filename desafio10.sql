SELECT
P.ProductName AS "Nome do produto",
OD.Quantity

FROM w3schools.order_details AS OD
INNER JOIN w3schools.products AS P
ON OD.ProductID = P.ProductID
WHERE OD.Quantity > 20.00
ORDER BY
P.ProductName,
OD.Quantity;


MIN(O.Quantity),
MAX(O.Quantity),
ROUND(AVG(O.Quantity), 2)

AVG(ROUND(O.Quantity, 2)),