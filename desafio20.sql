DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN e_mail VARCHAR(50))
BEGIN
	SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
	d.DEPARTMENT_NAME AS 'Departamento',
	j.JOB_TITLE AS 'Cargo'
	FROM job_history AS h
	INNER JOIN employees as e
	ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
	INNER JOIN departments AS d
	ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
	INNER JOIN jobs AS j
	ON j.JOB_ID = h.JOB_ID
	WHERE e.EMAIL = e_mail
    ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
