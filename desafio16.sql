DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qty_jobs INT;
SELECT COUNT(JOB_ID)
FROM hr.employees AS e
INNER JOIN
hr.job_history AS jh
ON
e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE EMAIL = employeeEmail;
RETURN qty_jobs;
END $$

DELIMITER ;
