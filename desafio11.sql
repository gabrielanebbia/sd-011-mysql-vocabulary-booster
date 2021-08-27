DELIMITER $$
CREATE FUNCTION numeroDeCompatriotas(pais VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT case
WHEN COUNT(*) > 1 THEN (COUNT(*) - 1)
WHEN COUNT(*) = 0 THEN 0
END AS 'Número de compatriotas'
FROM w3schools.customers AS c
WHERE c.Country = pais
INTO total;
RETURN total;
END$$
DELIMITER ;

SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
numeroDeCompatriotas(c.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS c
WHERE numeroDeCompatriotas(c.Country) IS NOT NULL
ORDER BY c.ContactName;
