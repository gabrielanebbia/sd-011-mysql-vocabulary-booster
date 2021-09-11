USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(m INT, a INT)
RETURNS INT READS SQL DATA 
BEGIN DECLARE total INT;
SELECT COUNT(*) FROM hr.employees WHERE MONTH(HIRE_DATE) = m AND YEAR(HIRE_DATE) = a INTO total;
RETURN total;
END $$
DELIMITER ;
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS total;
