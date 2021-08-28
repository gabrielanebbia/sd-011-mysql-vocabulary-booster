USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employeeEmail VARCHAR(25))
BEGIN
SELECT
CONCAT(employees.first_name, ' ', employees.last_name) AS `Nome completo`,
departments.DEPARTMENT_NAME AS `Departamento`,
jobs.JOB_TITLE AS `Cargo`
FROM employees AS employees
INNER JOIN job_history AS jobHistory
ON employees.employee_id = jobHistory.employee_id
INNER JOIN departments AS departments
ON jobHistory.department_id = departments.department_id
INNER JOIN jobs AS jobs
ON jobHistory.job_id = jobs.job_id
WHERE employees.email = employeeEmail
ORDER BY
departments.DEPARTMENT_NAME,
jobs.JOB_TITLE;
END $$

DELIMITER ;
