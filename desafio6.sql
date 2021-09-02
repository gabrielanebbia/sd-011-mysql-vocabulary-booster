SELECT concat(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
JOB_TITLE as 'Cargo',
START_DATE as 'Data de início do cargo',
DEPARTMENT_NAME as 'Departamento'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON jh.JOB_ID = j.JOB_ID
inner join hr.departments as d
on jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, JOB_TITLE;
