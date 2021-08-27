DELIMITER $$ 
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_customer VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_employees_for_job INT;
SELECT COUNT(*) 
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email_customer INTO total_employees_for_job;
RETURN total_employees_for_job;
END $$ 
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
