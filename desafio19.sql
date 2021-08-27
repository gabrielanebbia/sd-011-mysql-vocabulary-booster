USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(diaeano VARCHAR(30))
RETURNS VARCHAR(30) READS SQL DATA
BEGIN
DECLARE total_hire INT;
SELECT 
COUNT(*)
FROM
employees
WHERE
MONTH(HIRE_DATE) = REPLACE(diaeano, RIGHT(diaeano, 4), '')
AND YEAR(HIRE_DATE) = RIGHT(diaeano, 4)
INTO total_hire;
RETURN total_hire;
END $$
DELIMITER ;
