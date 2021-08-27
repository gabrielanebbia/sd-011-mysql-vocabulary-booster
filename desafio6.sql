SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
  (
    SELECT j.JOB_TITLE
    FROM hr.jobs AS j
    WHERE j.JOB_ID = e.JOB_ID
  ) AS Cargo,
  (
    SELECT jh.START_DATE
    FROM hr.job_history AS jh
    WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  ) AS `Data de início do cargo`,
  (
    SELECT d.DEPARTMENT_NAME
    FROM hr.departments AS d
    WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID
  ) AS Departamento
FROM hr.employees AS e
ORDER BY `Nome completo` DESC, Cargo ASC;

SELECT * FROM hr.employees;
SELECT * FROM hr.jobs;
SELECT * FROM hr.job_history;

SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME),
  (
    SELECT jh.START_DATE
    FROM hr.job_history AS jh
    WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  )
FROM hr.employees AS e