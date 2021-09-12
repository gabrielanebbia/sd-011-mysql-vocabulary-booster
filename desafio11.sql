SELECT
    customers1.ContactName AS 'Nome',
    customers1.Country AS 'País',
    COUNT(*) AS 'Número de compatriotas'
FROM w3schools.customers AS customers1, w3schools.customers AS customers2
WHERE customers1.Country = customers2.Country AND  customers1.ContactName != customers2.ContactName 
GROUP BY customers1.ContactName, customers1.Country
ORDER BY customers1.ContactName;

-- SELECT 
--     customers.ContactName AS Nome,
--     customers.Country AS País,
--     (SELECT 
--             COUNT(customersCount.Country) - 1
--         FROM
--             w3schools.customers AS customersCount
--         GROUP BY customersCount.Country
--         HAVING customers.Country = customersCount.Country)
--     AS `Número de compatriotas`
-- FROM
--     w3schools.customers
--     WHERE (SELECT 
--             COUNT(customersCount.Country) - 1
--         FROM
--             w3schools.customers AS customersCount
--         GROUP BY customersCount.Country
--         HAVING customers.Country = customersCount.Country) > 0
-- ORDER BY customers.ContactName;
