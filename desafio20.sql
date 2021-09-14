USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN mail VARCHAR(30))
BEGIN
SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
dpt.DEPARTMENT_NAME as `Departamento`,
jobs.JOB_TITLE as `Cargo`
FROM job_history as jb_hist
INNER JOIN employees as employees
ON employees.EMPLOYEE_ID = jb_hist.EMPLOYEE_ID
INNER JOIN departments as dept
ON dept.DEPARTMENT_ID = jb_hist.DEPARTMENT_ID
INNER JOIN jobs as jobs
ON jobs.JOB_ID = jb_hist.JOB_ID
WHERE employees.EMAIL = mail
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
