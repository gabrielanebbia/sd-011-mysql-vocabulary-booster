USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN get_email VARCHAR(100))
BEGIN
SELECT 
CONCAT(n.FIRST_NAME, ' ', n.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM hr.employees n
INNER JOIN hr.job_history jh
ON jh.EMPLOYEE_ID = n.EMPLOYEE_ID
INNER JOIN hr.departments d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN hr.jobs j
ON j.JOB_ID = jh.JOB_ID
WHERE n.EMAIL = get_email
ORDER BY 2 ASC, 3 ASC;
END $$
DELIMITER ;
