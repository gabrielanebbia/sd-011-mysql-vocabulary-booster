SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS 'Cargo',
JH.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM employees E
INNER JOIN
job_history JH
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN
jobs AS J 
ON J.JOB_ID = JH.JOB_ID
INNER JOIN
departments 
ON departments.DEPARTMENT_ID = JH.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo ASC;
