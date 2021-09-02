SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM
employees AS e
INNER JOIN
job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN
jobs AS j
ON jh.JOB_ID = j.JOB_ID
INNER JOIN
departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC,
 e.FIRST_NAME ASC;