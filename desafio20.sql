DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employeeEmail VARCHAR(50))
	BEGIN
		SELECT 
			CONCAT(E.FIRST_NAME, ' ',E.LAST_NAME) AS `Nome completo`,
            (SELECT DEPARTMENT_NAME FROM hr.departments AS D WHERE D.DEPARTMENT_ID = E.DEPARTMENT_ID) AS Departamento,
            (SELECT JOB_TITLE FROM hr.jobs AS J WHERE J.JOB_ID = E.JOB_ID) AS Cargo
		FROM hr.employees AS E WHERE E.EMAIL = employeeEmail
        ORDER BY Departamento ASC, Cargo ASC;
	END $$
DELIMITER ;
		