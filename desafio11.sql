SELECT a.contactName AS "Nome", 
a.Country AS "País", 
(SELECT COUNT(*) FROM customers AS b WHERE a.country = b.country AND a.ContactName <> b.ContactName) AS "Número de compatriotas"
FROM customers AS a
ORDER BY a.ContactName;
