DELIMITER $$
CREATE FUNCTION `exibir_quantidade_pessoas_contratadas_por_mes_e_ano`(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE pplHired INT;
SELECT COUNT(EMPLOYEE_ID) AS 'total_empregados'
FROM employees
WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
INTO pplHired;
RETURN pplHired;
END$$
DELIMITER ;
