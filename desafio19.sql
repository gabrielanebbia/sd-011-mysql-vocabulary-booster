DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(in_month INT, in_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) FROM hr.employees 
WHERE
MONTH(HIRE_DATE) = in_month
AND
YEAR(HIRE_DATE) = in_year
INTO total;
RETURN total;
END $$

DELIMITER ;
