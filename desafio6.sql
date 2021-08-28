SELECT concat(e.first_name, ' ', e.last_name) AS 'Nome completo', 
j.JOB_TITLE AS 'Cargo', 
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento' 
FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments as d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC, j.JOB_TITLE ASC;
