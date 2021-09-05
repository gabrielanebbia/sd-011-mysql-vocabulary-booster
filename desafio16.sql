DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qty_jobs INT;
SELECT COUNT(*)
FROM job_history AS job_history
INNER JOIN employees AS employees 
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
AND employees.EMAIL = email INTO qty_jobs;
RETURN qty_jobs;
END $$
DELIMITER ;
