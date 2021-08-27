DELIMITER //
CREATE FUNCTION hr.exibir_quantidade_pessoas_contratadas_por_mes_e_ano (
mesContr INT, anoContr INT)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE retorno INT;
SET retorno = 0;
SELECT
COUNT(e.EMPLOYEE_ID) INTO retorno
FROM hr.employees e
WHERE YEAR(e.HIRE_DATE) = anoContr AND MONTH(e.HIRE_DATE) = mesContr;
RETURN retorno;
END //