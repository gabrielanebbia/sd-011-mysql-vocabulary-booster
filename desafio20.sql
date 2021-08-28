DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(150))
BEGIN
SELECT 
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo', 
d.DEPARTMENT_NAME AS 'Departamento', 
j.JOB_TITLE AS 'Cargo' 
FROM hr.employees emp 
INNER JOIN hr.job_history jh 
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID 
INNER JOIN hr.jobs j 
ON jh.JOB_ID = j.JOB_ID 
INNER JOIN hr.departments d 
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID 
WHERE emp.EMAIL = email
ORDER BY d.DEPARTMENT_NAME, 
j.JOB_TITLE;
END $$

DELIMITER ;
