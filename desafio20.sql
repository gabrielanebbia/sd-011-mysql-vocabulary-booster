USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN customerEmail VARCHAR(100))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME AS 'Departamento',
js.JOB_TITLE AS 'Cargo'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.departments AS d ON d.DEPARTMENT_ID = j.DEPARTMENT_ID
INNER JOIN hr.jobs AS js ON js.JOB_ID = j.JOB_ID
WHERE customerEmail = e.EMAIL
ORDER BY d.DEPARTMENT_NAME, js.JOB_TITLE;
END $$
DELIMITER ;
