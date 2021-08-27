SELECT T1.ContactName Nome, T1.Country País, COUNT(*) `Número de compatriotas` FROM customers T1, customers T2
WHERE T1.Country = T2.Country AND T1.ContactName <> T2.ContactName
GROUP BY T1.ContactName, T1.Country
ORDER BY T1.ContactName;
