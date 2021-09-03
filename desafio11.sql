SELECT
c1.contactName AS `Nome`,
c1.country AS `País`,
COUNT(*) AS `Número de compatriotas`
FROM
w3schools.customers AS c1,
w3schools.customers AS c2
WHERE
c1.country = c2.country AND c1.contactName != c2.contactName
GROUP BY
`Nome`
ORDER BY
`Nome`;
