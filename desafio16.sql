USE hr;
DELIMITER $

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (femail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE response INT;
SELECT COUNT(job_history.JOB_ID)
FROM hr.job_history
AS job_history
INNER JOIN hr.employees
AS employees
ON employees.EMAIL = femail
WHERE employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
INTO response;
RETURN response;
END $$
DELIMITER ;
