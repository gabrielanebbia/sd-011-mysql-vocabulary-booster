DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(`month` INT, `year` INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE number_of_hires INT;
SELECT COUNT(*) 
FROM hr.employees
WHERE MONTH(HIRE_DATE) = `month`
AND YEAR(HIRE_DATE) = `year`
INTO number_of_hires;
RETURN number_of_hires;
END $$

DELIMITER ;
