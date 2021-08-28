DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT Reads SQL Data
BEGIN
DECLARE total_pessoas INT;
SELECT
COUNT(HIRE_DATE)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
INTO total_pessoas;
RETURN total_pessoas;
END $$
DELIMITER ;
