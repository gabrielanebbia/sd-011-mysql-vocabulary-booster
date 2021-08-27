USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(admission_month INT, admission_year INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_employees_contracted INT;
  SELECT
    COUNT(EMPLOYEE_ID) INTO total_employees_contracted
  FROM employees
  WHERE
    MONTH(HIRE_DATE) = admission_month
  AND
    YEAR(HIRE_DATE) = admission_year;
  RETURN total_employees_contracted;
END $$

DELIMITER ;
