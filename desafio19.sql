USE hr;
DELIMITER $$

CREATE FUNCTION hr.exibir_quantidade_pessoas_contratadas_por_mes_e_ano (
mesContr INT, anoContr INT)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE quantity INT;
SET quantity = 0;
SELECT
COUNT(e.EMPLOYEE_ID) INTO quantity
FROM hr.employees e
WHERE YEAR(e.HIRE_DATE) = anoContr AND MONTH(e.HIRE_DATE) = mesContr;
RETURN quantity;
END $$
