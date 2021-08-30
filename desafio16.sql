USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT COUNT(*) FROM hr.job_history AS JH
INNER JOIN hr.employees AS E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE E.EMAIL = employeeEmail INTO total_jobs;
RETURN total_jobs;
END $$

DELIMITER ;
