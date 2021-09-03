-- 11 - Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente
SELECT
  WC1.ContactName AS 'Nome',
  WC1.Country AS 'País',
  COUNT(WC2.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS WC1, w3schools.customers AS WC2
WHERE WC1.Country = WC2.Country AND WC1.ContactName <> WC2.ContactName
GROUP BY WC1.ContactName, WC1.Country
ORDER BY WC1.ContactName;
