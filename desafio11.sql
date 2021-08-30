SELECT CSM1.CustomerName AS 'Nome',
CSM1.Country AS 'País',
	(SELECT CSM2.Country, COUNT(CSM2.Country) - 1
	FROM CSM2
	GROUP BY CSM2.Country)
FROM w3schools.customers AS CSM1,
w3schools.customers AS CSM2;
