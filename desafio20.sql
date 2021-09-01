USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN emailRecebido VARCHAR(100))
BEGIN
SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
dp.DEPARTMENT_NAME AS 'Departamento',
jb.JOB_TITLE AS 'Cargo'
FROM hr.job_history AS jbh
INNER JOIN hr.employees AS emp
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS jb
ON jbh.JOB_ID = jb.JOB_ID
INNER JOIN hr.departments AS dp
ON jbh.DEPARTMENT_ID = dp.DEPARTMENT_ID
WHERE emp.EMAIL = emailRecebido
ORDER BY dp.DEPARTMENT_NAME ASC, jb.JOB_TITLE ASC;
END $$

DELIMITER ;
