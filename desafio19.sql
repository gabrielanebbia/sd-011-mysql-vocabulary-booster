USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_funcionarios_contratados INT;
SELECT COUNT(EMPLOYEE_ID)
FROM employees
WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
INTO quantidade_funcionarios_contratados;
RETURN quantidade_funcionarios_contratados;
END $$
DELIMITER ;
