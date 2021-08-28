DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN search_email VARCHAR(30))
BEGIN
  SELECT (
    SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME)
    FROM hr.employees AS e
    WHERE EMAIL = search_email
  ) AS `Nome completo`,
  (
    SELECT DEPARTMENT_NAME
    FROM hr.departments AS d
    WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID
  ) AS `Departamento`,
  (
    SELECT JOB_TITLE
    FROM hr.jobs AS j
    WHERE h.JOB_ID = j.JOB_ID
  ) AS `Cargo`
  FROM hr.job_history AS h
  WHERE EMPLOYEE_ID IN (
    SELECT EMPLOYEE_ID
    FROM hr.employees AS e
    WHERE EMAIL = search_email
  )
  ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
