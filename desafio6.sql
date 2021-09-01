SELECT CONCAT(n.FIRST_NAME, ' ', n.LAST_NAME) AS 'Nome completo',
c.JOB_TITLE AS 'Cargo',
h.START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS 'Departamento'
FROM hr.jobs AS c
INNER JOIN hr.employees AS n
ON c.JOB_ID = n.JOB_ID
INNER JOIN hr.departments AS d
ON n.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN hr.job_history AS h
ON n.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY CONCAT(n.FIRST_NAME, ' ', n.LAST_NAME) DESC, c.JOB_TITLE ASC;
