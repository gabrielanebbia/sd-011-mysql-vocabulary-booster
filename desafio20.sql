USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(40))
BEGIN
SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS "Nome completo",
departments.DEPARTMENT_NAME AS "Departamento",
jobs.JOB_TITLE AS "Cargo"
FROM hr.employees AS employees
INNER JOIN job_history AS job_history
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
INNER JOIN hr.departments AS departments
ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
INNER JOIN hr.jobs AS jobs
ON job_history.JOB_ID = jobs.JOB_ID
WHERE employees.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
