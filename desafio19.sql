DELIMITER $$ 
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hire_month int, hire_year int)
RETURNS INT READS SQL DATA 
BEGIN 

  DECLARE employees_hired int;
  SELECT
    COUNT(*)
  FROM
    hr.employees
  WHERE
    year(HIRE_DATE) = hire_year
    AND MONTH(HIRE_DATE) = hire_month INTO employees_hired;

  RETURN employees_hired;

END $$
DELIMITER;
