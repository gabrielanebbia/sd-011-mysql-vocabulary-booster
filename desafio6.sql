SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
JOB_TITLE AS 'Cargo',
START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS 'Departamento'
FROM
hr.employees AS e
INNER JOIN
hr.job_history AS jh
ON
jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN
hr.jobs AS j
ON
jh.JOB_ID = j.JOB_ID
INNER JOIN
hr.departments AS d
ON
d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, JOB_TITLE;
