USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE count_jobs INT;
SELECT COUNT(jh.EMPLOYEE_ID) FROM employees AS e
INNER JOIN hr.job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = employee_email INTO count_jobs;
RETURN count_jobs;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');