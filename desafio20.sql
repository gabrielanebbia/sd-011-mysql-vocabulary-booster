DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT
CONCAT(t2.FIRST_NAME, ' ',t2.LAST_NAME) AS 'Nome completo',
( SELECT DEPARTMENT_NAME FROM hr.departments WHERE hr.departments.DEPARTMENT_ID = t1.DEPARTMENT_ID ) AS `Departamento`,
( SELECT JOB_TITLE FROM hr.jobs WHERE JOB_ID = t1.JOB_ID) AS `Cargo`
FROM hr.job_history AS t1
INNER JOIN hr.employees AS t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
WHERE t2.EMAIL=email
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
