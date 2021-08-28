SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
J.JOB_TITLE AS Cargo,
H.START_DATE AS `Data de início do cargo`,
D.DEPARTMENT_NAME AS Departamento
FROM hr.employees E
INNER JOIN hr.jobs J
ON E.JOB_ID = J.JOB_ID
INNER JOIN hr.job_history H
ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
INNER JOIN hr.departments D
ON H.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
