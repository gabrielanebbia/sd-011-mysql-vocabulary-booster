SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS 'Cargo',
JW.START_DATE AS	'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS JW
INNER JOIN hr.employees as E
ON JW.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs AS J
ON J.JOB_ID = JW.JOB_ID
INNER JOIN hr.departments AS D
ON D.DEPARTMENT_ID = JW.DEPARTMENT_ID
ORDER BY `Nome completo`, `Cargo`;
