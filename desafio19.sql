DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
SELECT COUNT(*) AS 'total'
FROM hr.employees
WHERE mes = MONTH(hire_date) AND ano = YEAR(hire_date);
END $$

DELIMITER ;
