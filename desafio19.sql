USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_contratados INT;
SELECT COUNT(*)
FROM hr.employees
WHERE mes = MONTH(hire_date) AND ano = YEAR(hire_date)
INTO quantidade_de_contratados;
RETURN quantidade_de_contratados;
END $$

DELIMITER ;
