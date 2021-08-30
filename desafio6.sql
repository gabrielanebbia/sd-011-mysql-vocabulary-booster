SELECT 
CONCAT(emp.FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
jb.JOB_TITLE AS 'Cargo',
jb_hist.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jb_hist
INNER JOIN hr.jobs AS jb
INNER JOIN hr.departments AS dep
ON jb_hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
AND emp.JOB_ID = jb.JOB_ID
AND jb_hist.DEPARTMENT_ID = dep.DEPARTMENT_ID 
ORDER BY emp.FIRST_NAME DESC;
