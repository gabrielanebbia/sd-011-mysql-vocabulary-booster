USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE resposta INT;
SELECT COUNT(*) FROM employees
WHERE MONTH(HIRE_DATE) = CONCAT('0', mes) 
AND YEAR(HIRE_DATE) = ano INTO resposta;
RETURN resposta;
END $$;

DELIMITER ;
