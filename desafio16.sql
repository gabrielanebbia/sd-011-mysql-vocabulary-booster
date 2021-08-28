DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(50))
	RETURNS INT READS SQL DATA
    BEGIN
		DECLARE numberOfJobs INT;
        SELECT COUNT(JB.JOB_ID)
        FROM hr.job_history AS JB
        WHERE JB.EMPLOYEE_ID IN (SELECT EMPLOYEE_ID FROM hr.employees AS E WHERE E.EMAIL = employeeEmail) INTO numberOfJobs;
		RETURN numberOfJobs;
	END $$
DELIMITER ;