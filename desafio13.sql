SELECT p.ProductName AS Produto, p.Price AS Preço
FROM products AS p
INNER JOIN order_details AS od
ON od.ProductID = p.ProductID
GROUP BY `Produto`, `Price` HAVING MAX(od.Quantity) > 80
ORDER BY `Produto`;

Error Code: 1055. Expression #2 of SELECT list is not in GROUP BY clause and 
contains nonaggregated column 'w3schools.p.Price' which is not functionally 
dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by

