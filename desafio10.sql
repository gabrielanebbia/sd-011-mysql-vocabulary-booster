SELECT * FROM hr.countries;
SELECT * FROM hr.regions;
SELECT * FROM hr.jobs;
SELECT * FROM hr.employees;
SELECT * FROM hr.job_history;
SELECT * FROM hr.departments;
SELECT c.COUNTRY_NAME, c.REGION_ID, r.REGION_NAME
FROM hr.countries AS c
INNER JOIN hr.regions AS r
ON r.REGION_ID = c.REGION_ID;

SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.employees;
SELECT * FROM w3schools.order_details;
SELECT * FROM w3schools.orders;
SELECT * FROM w3schools.products;
SELECT * FROM w3schools.shippers;
SELECT * FROM w3schools.suppliers;

SELECT p.ProductName AS `Produto`, MIN(o_d.Quantity) AS `Mínima`, MAX(o_d.Quantity) AS `Máxima`, ROUND(AVG(o_d.Quantity), 2) AS `Média`
FROM w3schools.order_details AS o_d
INNER JOIN w3schools.products AS p
ON p.ProductID = o_d.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;