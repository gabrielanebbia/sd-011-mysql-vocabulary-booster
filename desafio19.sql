USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (inputMonth INT, inputYear INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantity INT;
  SELECT COUNT(*) 
    FROM hr.employees E
  WHERE YEAR(E.HIRE_DATE) = inputYear 
    AND MONTH(E.HIRE_DATE) = inputMonth
  INTO quantity;
  RETURN quantity;
END $$

DELIMITER ;
