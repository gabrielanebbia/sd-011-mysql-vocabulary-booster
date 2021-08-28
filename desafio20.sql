DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(20))
BEGIN
SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
departments.DEPARTMENT_NAME AS 'Departamento',
jobs.JOB_TITLE AS 'Cargo'
FROM hr.job_history AS jobHistory
LEFT JOIN hr.employees AS employees
ON jobHistory.EMPLOYEE_ID = employees.EMPLOYEE_ID
INNER JOIN hr.departments AS departments
ON departments.DEPARTMENT_ID = jobHistory.DEPARTMENT_ID
INNER JOIN hr.jobs AS jobs
ON jobHistory.JOB_ID = jobs.JOB_ID
WHERE employees.EMAIL = email
ORDER BY departments.DEPARTMENT_NAME,
jobs.JOB_TITLE;
END $$

DELIMITER ;
