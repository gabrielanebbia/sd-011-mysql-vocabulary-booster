-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo', 
j.JOB_TITLE AS Cargo,
j_h.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS Departamento
FROM hr.job_history AS j_h
INNER JOIN hr.employees AS e
ON j_h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON j_h.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS d
ON j_h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
