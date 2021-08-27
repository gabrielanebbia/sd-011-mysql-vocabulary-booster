DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(MES INT, ANO INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE count_employees INT;
SELECT COUNT(*) FROM hr.employees AS e
WHERE MONTH(e.HIRE_DATE) = MES AND YEAR(e.HIRE_DATE) = ANO 
INTO count_employees;
RETURN count_employees;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
