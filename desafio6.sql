SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS Cargo,
H.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON J.JOB_ID = E.JOB_ID
INNER JOIN hr.job_history AS H
ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.departments AS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) DESC, Cargo ASC;
