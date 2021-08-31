DELIMITER $$
CREATE FUNCTION
exibir_quantidade_pessoas_contratadas_por_mes_e_ano(
monthSelec INT,
yearSelec INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE countEmp INT;
SELECT
COUNT(hr.HIRE_DATE)
FROM
hr.employees
WHERE
MONTH(hr.HIRE_DATE) = monthSelec AND
YEAR(hr.HIRE_DATE) = yearSelec
INTO countEmp;
RETURN countEmp;
END $$
DELIMITER;
