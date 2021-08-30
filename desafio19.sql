USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(
  selected_month INT,
  selected_year INT
)
  RETURNS INT
  READS SQL DATA
BEGIN
  DECLARE employee_count INT;
  SELECT
    COUNT(START_DATE)
  FROM
    employees
  WHERE
    MONTH(HIRE_DATE) = selected_month AND
    YEAR(HIRE_DATE) = selected_year
  INTO employee_count;

  RETURN employee_count;

END $$

DELIMITER ;
