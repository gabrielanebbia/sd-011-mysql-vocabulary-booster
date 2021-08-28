DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
  SELECT
    CONCAT (employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
    departments.DEPARTMENT_NAME AS `Departamento`,
    jobs.JOB_TITLE AS `Cargo`
  FROM  job_history AS job_history
  INNER JOIN employees AS employees
    ON departments.DEPARTMENT_ID = job_history.DEPARTMENT_ID
  INNER JOIN jobs AS jobs
    ON jobs.JOB_ID = job_history.JOB_ID
    WHERE employees.EMAIL = email
  ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
