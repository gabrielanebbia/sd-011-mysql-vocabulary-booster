DELIMITER $$
CREATE FUNCTION
exibir_quantidade_pessoas_contratadas_por_mes_e_ano(
monthSelec INT,
yearSelec INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE countEmp INT;
SELECT
COUNT(HIRE_DATE)
FROM
hr.employees
WHERE
MONTH(HIRE_DATE) = monthSelec AND
YEAR(HIRE_DATE) = yearSelec
INTO countEmp;
RETURN countEmp;
END $$
DELIMITER;
