DELIMITER $$ 

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN 
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo', 
d.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
INNER JOIN hr.departments AS d
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
AND d.DEPARTMENT_ID = jh.DEPARTMENT_ID
AND j.JOB_ID = jh.JOB_ID
WHERE e.EMAIL = EMAIL
ORDER BY `Departamento`, `Cargo`;
END $$ 

DELIMITER ;

CALL exibir_historico_completo_por_funcionario("NKOCHHAR")DELIMITER $$ 

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(20))
BEGIN 
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo', 
d.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
INNER JOIN hr.departments AS d
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
AND d.DEPARTMENT_ID = jh.DEPARTMENT_ID
AND j.JOB_ID = jh.JOB_ID
WHERE e.EMAIL = EMAIL
ORDER BY `Departamento`, `Cargo`;
END $$ 

DELIMITER ;

CALL exibir_historico_completo_por_funcionario("NKOCHHAR");
