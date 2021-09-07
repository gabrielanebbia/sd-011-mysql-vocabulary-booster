SELECT
  CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
  j.JOB_TITLE AS 'Cargo',
  jh.START_DATE AS 'Data de início do cargo',
  dp.DEPARTMENT_NAME AS 'Departamento'
  
FROM hr.employees AS emp
INNER JOIN hr.jobs AS j ON emp.JOB_ID = j.JOB_ID
INNER JOIN hr.job_history AS jh ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS dp ON jh.DEPARTMENT_ID = dp.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
