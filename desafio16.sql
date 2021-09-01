USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(100))
RETURNS INT reads sql data
BEGIN
DECLARE jobs_total int;
SELECT COUNT(*)
FROM hr.job_history as t1
INNER JOIN hr.employees as t2 ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
WHERE t2.email = email
INTO jobs_total;
RETURN jobs_total;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS total_empregos;
