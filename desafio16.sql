DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs INT;
SELECT COUNT(jh.JOB_ID)
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO jobs;
RETURN jobs;
END $$
DELIMITER ;
