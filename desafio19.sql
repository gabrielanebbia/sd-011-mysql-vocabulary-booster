USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(`month` INT, `year` INt)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT COUNT(*)
FROM employees
WHERE
MONTH(hire_date) = `month`
AND YEAR(hire_date) = `year`
INTO quantity;
RETURN quantity;
END $$

DELIMITER ;
