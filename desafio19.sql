USE hr
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE valor INT;
SELECT count(*) FROM hr.employees e 
where MONTH(e.HIRE_DATE) = mes AND YEAR(e.HIRE_DATE) = ano INTO valor; 
RETURN valor;
END $$
DELIMITER ;
