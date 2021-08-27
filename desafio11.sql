SELECT contactName AS 'Nome', 
country AS 'País', 
(SELECT COUNT(country) - 1 FROM w3schools.customers GROUP BY country HAVING country = `País`) AS 'Número de compatriotas'
FROM w3schools.customers
ORDER BY `Nome`;
