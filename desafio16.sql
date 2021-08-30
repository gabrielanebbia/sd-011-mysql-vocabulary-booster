USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(25))
  RETURNS INT
  READS SQL DATA
BEGIN

  DECLARE job_count INT;
  SELECT
    COUNT(jh.EMPLOYEE_ID)
  FROM
    job_history AS jh
  INNER JOIN
    employees AS e
    ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  WHERE
    e.EMAIL = employee_email
  GROUP BY
    jh.EMPLOYEE_ID
  INTO job_count;

  RETURN job_count;

END $$

DELIMITER ;
