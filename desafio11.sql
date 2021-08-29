SELECT
C.ContactName AS "Nome",
C.Country AS "País",
(PESSOAS_POR_PAIS.QNT -1)
FROM 
w3schools.customers AS C
INNER JOIN 	
(SELECT Country, COUNT(Country) AS "QNT"
FROM w3schools.customers
GROUP BY Country HAVING QNT >= 2 ) AS PESSOAS_POR_PAIS ON C.Country = PESSOAS_POR_PAIS.Country 
ORDER BY 1 ASC;
