USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(MES INT, ANO INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_hired INT;
    SELECT COUNT(*) FROM employees WHERE MONTH(HIRE_DATE) = MES AND YEAR(HIRE_DATE) = ANO INTO total_hired;
    RETURN total_hired;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
