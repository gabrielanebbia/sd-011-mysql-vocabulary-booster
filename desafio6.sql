SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome Completo`,
(
  SELECT JOB_TITLE
  FROM hr.jobs
  WHERE e.JOB_ID = JOB_ID
) AS `Cargo`,
HIRE_DATE AS `Data de início do cargo`,
(
  SELECT DEPARTMENT_NAME
  FROM hr.departments
  WHERE e.DEPARTMENT_ID = DEPARTMENT_ID
) AS `Departamento`
FROM hr.employees AS e
ORDER BY `Nome Completo` DESC, `Cargo`;
