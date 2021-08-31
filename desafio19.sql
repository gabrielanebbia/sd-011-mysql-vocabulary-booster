USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month_in INT, year_in INT)
RETURNS INT READS SQL DATA
BEGIN
  SELECT COUNT(*)
  FROM hr.employees AS e
  WHERE MONTH(e.HIRE_DATE) = month_in AND YEAR(e.HIRE_DATE) = year_in
  INTO @quantity;
  RETURN @quantity;
END $$

DELIMITER ;
