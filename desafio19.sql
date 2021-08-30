DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mês INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_employees INT;
SELECT COUNT(*) FROM hr.employees AS e
WHERE MONTH(e.HIRE_DATE) = mês AND YEAR(e.HIRE_DATE) = ano 
INTO total_employees;
RETURN total_employees;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
