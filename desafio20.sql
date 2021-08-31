USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
dep.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM hr.job_history as `history`
INNER JOIN hr.employees AS emp
ON `history`.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = `history`.DEPARTMENT_ID
INNER JOIN hr.jobs AS j
ON j.JOB_ID = `history`.JOB_ID
WHERE emp.EMAIL = email
ORDER BY dep.DEPARTMENT_NAME ASC, j.JOB_TITLE ASC;
END $$
DELIMITER ;
