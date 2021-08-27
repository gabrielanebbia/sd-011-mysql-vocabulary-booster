SELECT
CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) AS "Nome completo",
j.JOB_TITLE AS Cargo,
e.HIRE_DATE AS "Data de início do cargo",
d.DEPARTMENT_NAME AS Departamento
FROM
hr.employees e
INNER JOIN hr.jobs j ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.departments d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) DESC, d.DEPARTMENT_NAME ASC;
