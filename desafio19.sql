DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hired_month INT, hired_year INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qty_people_hired INT;
  SELECT COUNT(EMPLOYEE_ID) INTO qty_people_hired
  FROM employees
  WHERE MONTH(HIRE_DATE) = hired_month
  AND YEAR(HIRE_DATE) = hired_year;
  RETURN qty_people_hired;
END $$

DELIMITER ;
