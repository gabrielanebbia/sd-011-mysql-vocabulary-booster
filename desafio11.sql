-- SELECT c1.ContactName AS 'Nome', c1.Country AS 'País', c2.ContactName, c2.Country
-- FROM w3schools.customers AS c1, w3schools.customers AS c2
-- WHERE c1.Country = c2.Country;
SELECT ContactName AS 'Nome', Country AS 'País', COUNT(CustomerId)
FROM w3schools.customers
GROUP BY c.ContactName;