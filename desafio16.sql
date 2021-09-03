USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE numberOfJobs INT;
SELECT count(jh.EMPLOYEE_ID) INTO numberOfJobs
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email;
RETURN numberOfJobs;
END $$

DELIMITER;
