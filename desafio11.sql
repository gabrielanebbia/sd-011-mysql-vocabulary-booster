SELECT 
    cm.ContactName AS 'Nome',
    cm.Country AS 'País',
    COUNT(cmnew.CustomerID) AS 'Número de compatriotas'
FROM
    w3schools.customers AS cm,
    w3schools.customers AS cmnew
WHERE
    cm.Country = cmnew.Country
        AND cm.CustomerID != cmnew.CustomerID
GROUP BY Nome , País
ORDER BY Nome
