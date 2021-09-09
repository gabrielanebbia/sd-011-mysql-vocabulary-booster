SELECT cu1.ContactName AS 'Nome',
  cu1.Country AS 'País',
  (
    SELECT COUNT(cu2.Country) - 1
    FROM w3schools.customers AS cu2
    WHERE cu2.country = cu1.Country
  ) AS 'Número de compatriotas'
FROM w3schools.customers AS cu1
WHERE (
    SELECT COUNT(cu2.Country) - 1
    FROM w3schools.customers AS cu2
    WHERE cu2.country = cu1.Country
  ) > 0
ORDER BY cu1.ContactName ASC;
