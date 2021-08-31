DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT
CONCAT(empls.FIRST_NAME, ' ', empls.LAST_NAME) AS 'Nome completo',
depts.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM
hr.employees AS empls
INNER JOIN
hr.job_history AS j_h ON empls.EMPLOYEE_ID = j_h.EMPLOYEE_ID
INNER JOIN
hr.jobs AS j ON j_h.JOB_ID = j.JOB_ID
INNER JOIN
hr.departments AS depts ON j_h.DEPARTMENT_ID = depts.DEPARTMENT_ID
WHERE
empls.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
