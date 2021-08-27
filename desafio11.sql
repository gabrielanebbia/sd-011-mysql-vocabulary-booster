SELECT A.ContactName AS "Nome",
A.Country AS "País", 
COUNT(A.Country) AS "Número de compatriotas"
FROM customers AS A, customers AS B
WHERE A.Country = B.Country AND A.ContactName <> B.ContactName
GROUP BY A.ContactName
ORDER BY A.ContactName;
