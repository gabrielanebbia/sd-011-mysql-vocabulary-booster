USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_funcionario_contratado INT;
SELECT COUNT(*) FROM hr.employees AS e
WHERE MONTH(e.HIRE_DATE) = mes AND YEAR(e.HIRE_DATE) = ano
INTO quantidade_funcionario_contratado;
RETURN quantidade_funcionario_contratado;
END $$
DELIMITER ;
