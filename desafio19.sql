USE	hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_contratados INT;
SELECT COUNT(*)
FROM hr.employees
WHERE MONTH(hr.employees.HIRE_DATE) = mes
AND YEAR(hr.employees.HIRE_DATE) = ano INTO total_contratados;
RETURN total_contratados;
END $$

DELIMITER ;
