DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*)
FROM hr.employees e
WHERE MONTH(e.HIRE_DATE) = mes AND YEAR(e.HIRE_DATE) = ano INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
