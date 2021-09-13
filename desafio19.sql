DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE pessoas_contratadas INT;
SELECT COUNT(*) as total
FROM hr.employees AS employees
WHERE MONTH(employees.HIRE_DATE) = mes
AND YEAR(employees.HIRE_DATE) = ano
INTO pessoas_contratadas;
RETURN pessoas_contratadas;
END $$

DELIMITER ;
