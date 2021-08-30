USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(isMonth INT, isYear INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE dates INT;
SELECT COUNT(EMPLOYEE_ID)
FROM hr.employees
WHERE HIRE_DATE
LIKE CONCAT('%', isYear, '%', '-', '%', isMonth, '%', '%__%')
INTO dates;
RETURN dates;
END $$
DELIMITER ;
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(06, 1987);
