SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS 'Cargo',
H.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON E.JOB_ID = J.JOB_ID
INNER JOIN hr.job_history AS H
ON E.JOB_ID = H.JOB_ID
INNER JOIN hr.departments AS D
ON H.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
