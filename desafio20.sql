DELIMITER //
CREATE PROCEDURE hr.exibir_historico_completo_por_funcionario (
IN emailFunc VARCHAR(255))
BEGIN
SELECT
CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) AS "Nome completo",
d.DEPARTMENT_NAME AS Departamento,
j.JOB_TITLE AS Cargo
FROM hr.employees e
LEFT JOIN hr.job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
LEFT JOIN hr.departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
LEFT JOIN hr.jobs j on j.JOB_ID = jh.JOB_ID
WHERE e.EMAIL = emailFunc
ORDER BY d.DEPARTMENT_NAME ASC, j.JOB_TITLE ASC;
END //