DELIMITER $$ 
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(25))
 RETURNS INT READS SQL DATA 
 BEGIN 
  DECLARE total_jobs INT;

  SELECT
    COUNT(*)
  FROM
    hr.job_history AS jh
    INNER JOIN hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE
    e.EMAIL = employee_email
  GROUP BY
    e.EMPLOYEE_ID INTO total_jobs;

  RETURN total_jobs;

END $$ 
DELIMITER;
