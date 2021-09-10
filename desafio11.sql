SELECT nome.ContactName AS 'Nome', pais.Country AS 'País',
COUNT(nome.CustomerID) AS 'Número de compatriotas'

FROM w3schools.customers AS nome, w3schools.customers AS pais
WHERE nome.country = pais.country
AND nome.CustomerID <> pais.CustomerID

GROUP BY nome.CustomerID
ORDER BY nome.ContactName;
