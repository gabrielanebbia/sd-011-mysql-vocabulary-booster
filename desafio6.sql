SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS Cargo,
JH.START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS Departamento
FROM employees AS E
INNER JOIN jobs AS J
ON J.JOB_ID = E.JOB_ID
INNER JOIN job_history AS J
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN departments AS Dpt
ON Dpt.DEPARTMENT_ID = E.DEPARTMENT_ID
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) DESC, CARGO;
