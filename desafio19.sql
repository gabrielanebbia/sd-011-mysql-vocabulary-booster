DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month INT, year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE count_employees INT;
SELECT COUNT(*) FROM hr.employees
WHERE MONTH(hire_date) = month AND
YEAR(hire_date) = year
INTO count_employees;
RETURN count_employees;
END $$
DELIMITER ;
