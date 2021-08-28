DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(m int, y int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_total INT;
SELECT DISTINCT COUNT(EMPLOYEE_ID)
FROM hr.employees
WHERE (MONTH(HIRE_DATE) = m AND YEAR(HIRE_DATE) = y) INTO qtd_total;
RETURN qtd_total;
END $$
DELIMITER ;
