SELECT C1.ContactName AS 'Nome',
C1.Country AS 'País',
(
SELECT COUNT(*) -1
FROM w3schools.customers
WHERE C1.Country = Country
) AS 'Número de compatriotas'
FROM w3schools.customers C1
WHERE (
SELECT COUNT(*) -1
FROM w3schools.customers
WHERE C1.Country = Country
) > 0
ORDER BY C1.ContactName;
