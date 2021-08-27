SELECT (
  SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)
  FROM hr.employees AS e
  WHERE e.EMPLOYEE_ID = h.EMPLOYEE_ID
) AS `Nome Completo`,
(
  SELECT JOB_TITLE
  FROM hr.jobs AS j
  WHERE h.JOB_ID = j.JOB_ID
) AS `Cargo`,
START_DATE AS `Data de início do cargo`,
(
  SELECT DEPARTMENT_NAME
  FROM hr.departments
  WHERE h.DEPARTMENT_ID = DEPARTMENT_ID
) AS `Departamento`
FROM hr.job_history AS h
WHERE DEPARTMENT_ID != 'NULL'
ORDER BY `Nome Completo` DESC, `Cargo`;
