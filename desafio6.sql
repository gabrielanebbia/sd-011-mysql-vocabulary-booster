SELECT CONCAT(e.FIRST_NAME,' ', e.LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS `Cargo`,
jh.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
INNER JOIN hr.job_history AS jh
INNER JOIN hr.departments AS d
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND jh.JOB_ID = j.JOB_ID AND jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
