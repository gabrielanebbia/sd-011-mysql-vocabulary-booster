SELECT CONCAT(A.first_name, ' ', A.last_name) AS 'Nome completo',
B.JOB_TITLE AS Cargo,
C.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS A
INNER JOIN hr.jobs AS B
INNER JOIN hr.job_history AS C
INNER JOIN hr.departments AS D
ON B.JOB_ID = C.JOB_ID
AND A.EMPLOYEE_ID = C.EMPLOYEE_ID
AND C.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
