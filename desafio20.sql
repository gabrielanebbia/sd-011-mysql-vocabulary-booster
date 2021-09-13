DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN input_email VARCHAR(30))
BEGIN
SELECT
CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME) AS "Nome completo",
departments.DEPARTMENT_NAME AS "Departamento",
jobs.JOB_TITLE AS "Cargo"
FROM hr.employees AS employees
INNER JOIN hr.job_history AS job_history
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
INNER JOIN hr.departments AS departments
ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
INNER JOIN hr.jobs AS jobs
ON job_history.JOB_ID = jobs.JOB_ID
WHERE input_email = employees.EMAIL
ORDER BY Departamento ASC,
Cargo ASC;
END $$

DELIMITER ;
