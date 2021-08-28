SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.orders;
SELECT * FROM w3schools.order_details;
SELECT * FROM employees;
SELECT * FROM w3schools.products;
SELECT * FROM w3schools.suppliers;


SELECT 
c.ContactName AS 'Nome',
c.Country AS 'País',
(
SELECT COUNT(c2.Country) -1
FROM w3schools.customers AS c2
WHERE c2.Country = c.Country
) AS 'Número de compatriotas' 
FROM w3schools.customers AS c
ORDER BY c.ContactName;