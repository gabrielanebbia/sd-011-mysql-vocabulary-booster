DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_employee VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_qty INT;
SELECT count(EMPLOYEE_ID) FROM hr.job_history
WHERE EMPLOYEE_ID IN (
SELECT EMPLOYEE_ID FROM hr.employees
WHERE EMAIL = email_employee
) INTO jobs_qty;
RETURN jobs_qty;
END $$
DELIMITER ;
