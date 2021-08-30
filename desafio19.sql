DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT
COUNT(*) AS 'Quantity'
FROM
employees AS e
WHERE MONTH(e.hire_date) = mes AND YEAR(e.hire_date) = ano INTO total;
RETURN total;
END $$

DELIMITER ;