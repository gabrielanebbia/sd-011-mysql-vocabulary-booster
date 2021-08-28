SELECT ContactName AS 'Nome',
Country AS 'País',
(SELECT Count(Country) 
FROM customers
GROUP BY Country
HAVING Country = `País`
) AS 'Número de compatriotas'
FROM customers ORDER BY `Nome`;


SELECT * FROM order_details;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM shippers;