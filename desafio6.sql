SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
(
SELECT JOB_TITLE
FROM hr.jobs
WHERE JH.JOB_ID = JOB_ID
) AS 'Cargo',
JH.START_DATE AS 'Data de início do cargo',
(
SELECT DEPARTMENT_NAME
FROM hr.departments
WHERE JH.DEPARTMENT_ID = DEPARTMENT_ID
) AS 'Departamento'
FROM hr.employees E
INNER JOIN hr.job_history JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) DESC,
(
SELECT JOB_TITLE
FROM hr.jobs
WHERE JH.JOB_ID = JOB_ID
);
