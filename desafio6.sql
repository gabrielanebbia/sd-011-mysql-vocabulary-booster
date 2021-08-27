SELECT CONCAT(A.first_name, ' ', A.last_name) AS 'Nome completo',
B.JOB_TITLE AS Cargo,
C.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS A
INNER JOIN hr.jobs AS B
ON A.JOB_ID = B.JOB_ID
INNER JOIN hr.job_history AS C
ON A.EMPLOYEE_ID = C.EMPLOYEE_ID
INNER JOIN hr.departments AS D
ON C.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
