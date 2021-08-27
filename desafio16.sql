USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeer_email VARCHAR(500))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_jobs INT;
  SELECT COUNT(JH.EMPLOYEE_ID) INTO total_jobs FROM hr.employees AS E
  INNER JOIN hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
  WHERE E.EMAIL = employeer_email;
  RETURN total_jobs;
END $$

DELIMITER ;
