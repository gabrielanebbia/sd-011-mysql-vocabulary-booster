SELECT P.ProductName AS 'Produto',
MIN(OD.Quantity) AS 'Mínima',
MAX(OD.Quantity) AS 'Máxima',
ROUND(AVG(OD.Quantity), 2) AS 'Média'
FROM order_details OD
INNER JOIN
products P
ON P.ProductID = OD.ProductID
GROUP BY OD.ProductID
HAVING Média > 20
ORDER BY Média ASC , Produto ASC;
