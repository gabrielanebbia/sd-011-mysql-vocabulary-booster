DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(40))
RETURNS smallint READS SQL DATA
BEGIN
DECLARE jobs smallint;
SELECT COUNT(*) FROM hr.job_history jh
INNER JOIN hr.employees e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.email = email INTO jobs;
RETURN jobs;
END $$
DELIMITER ;
