DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(m INT, y INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qty_hires INT;
SELECT COUNT(*) INTO qty_hires
FROM hr.employees
WHERE YEAR(HIRE_DATE) = y
AND MONTH(HIRE_DATE) = m;
RETURN qty_hires;
END $$
DELIMITER ;
