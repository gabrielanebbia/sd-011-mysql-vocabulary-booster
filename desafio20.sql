USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employeeEmail TEXT)

BEGIN
SELECT
CONCAT(emp.FIRST_NAME, ' ', LAST_NAME) 'Nome completo',
dpt.DEPARTMENT_NAME 'Departamento',
jobs.JOB_TITLE 'Cargo'
FROM job_history job_h
LEFT JOIN hr.employees emp
ON emp.EMPLOYEE_ID = job_h.EMPLOYEE_ID
LEFT JOIN departments dpt
ON dpt.DEPARTMENT_ID = job_h.DEPARTMENT_ID
LEFT JOIN jobs jobs
ON jobs.JOB_ID = job_h.JOB_ID
WHERE emp.EMAIL = employeeEmail
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
