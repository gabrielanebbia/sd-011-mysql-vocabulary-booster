USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT
CONCAT(e.first_name, ' ', e.last_name) as 'Nome completo',
d.DEPARTMENT_NAME as 'Departamento',
j.JOB_TITLE as 'Cargo'
FROM hr.job_history as jh
inner join hr.employees as e on jh.EMPLOYEE_ID = e.EMPLOYEE_ID
inner join hr.departments as d on jh.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join hr.jobs as j on jh.JOB_ID = j.JOB_ID
WHERE e.EMAIL = email
ORDER BY d.DEPARTMENT_NAME, j.JOB_TITLE;
END $$
DELIMITER ;
CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
