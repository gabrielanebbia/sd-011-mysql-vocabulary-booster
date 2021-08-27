DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month_in INT, year_in INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hired_pp_number INT;
SELECT COUNT(*)
FROM employees
WHERE MONTH(HIRE_DATE) LIKE month_in AND YEAR(HIRE_DATE) LIKE year_in
INTO hired_pp_number;
RETURN hired_pp_number;
END $$

DELIMITER ;