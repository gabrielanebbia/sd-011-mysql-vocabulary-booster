SELECT CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME) AS "Nome completo",
job.JOB_TITLE AS 'Cargo',
employ.HIRE_DATE AS "Data de início do cargo",
department.DEPARTMENT_NAME AS "Departamento"
FROM hr.employees AS employ
INNER JOIN hr.jobs AS job
ON employ.JOB_ID = job.JOB_ID
INNER JOIN hr.departments AS department
ON department.DEPARTMENT_ID = employ.DEPARTMENT_ID
ORDER BY 1 DESC, 2 ASC;
