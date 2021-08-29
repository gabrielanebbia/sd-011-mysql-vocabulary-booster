USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes SMALLINT, ano SMALLINT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE pessoas SMALLINT;
SELECT COUNT(HIRE_DATE) FROM hr.employees
WHERE mes = MONTH(HIRE_DATE)
AND
ano = YEAR(HIRE_DATE)
INTO pessoas;
RETURN pessoas;
END $$

DELIMITER ;
