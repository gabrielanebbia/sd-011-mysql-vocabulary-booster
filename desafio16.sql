USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email_user VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT COUNT(*) AS 'total'
FROM hr.job_history
WHERE (
SELECT EMPLOYEE_ID
FROM hr.employees
WHERE EMAIL LIKE CONCAT(email_user, '%')
) = EMPLOYEE_ID INTO total_jobs;
RETURN total_jobs;
END $$

DELIMITER ;
