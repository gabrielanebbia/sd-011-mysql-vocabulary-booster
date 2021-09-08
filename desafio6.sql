SELECT concat(em.FIRST_NAME, ' ', em.LAST_NAME) AS 'Nome completo',
  jb.JOB_TITLE AS Cargo,
  jh.START_DATE AS 'Data de início do cargo',
  dp.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS em
  INNER JOIN hr.jobs AS jb ON em.JOB_ID = jb.JOB_ID
  INNER JOIN hr.job_history AS jh ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
  INNER JOIN hr.departments AS dp ON jh.DEPARTMENT_ID = dp.DEPARTMENT_ID
ORDER BY concat(em.FIRST_NAME, ' ', em.LAST_NAME) DESC,
  jb.JOB_TITLE ASC;
