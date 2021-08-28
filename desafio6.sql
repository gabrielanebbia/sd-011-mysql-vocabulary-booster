SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome',
j.JOB_TITLE AS 'Cargo',
e.HIRE_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees e
INNER JOIN hr.jobs j ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.departments d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(e.first_name, ' ', e.last_name) ASC;