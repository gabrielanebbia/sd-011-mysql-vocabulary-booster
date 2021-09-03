USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(get_month INT, get_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE get_qtd INT;
SELECT COUNT(HIRE_DATE)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = get_month 
AND YEAR(HIRE_DATE) = get_year 
INTO get_qtd;
RETURN get_qtd;
END $$
DELIMITER ;
