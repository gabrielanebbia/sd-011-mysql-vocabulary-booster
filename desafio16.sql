DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailEmployeer VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantityJobs INT;
SELECT COUNT(a.JOB_ID) FROM job_history AS a
INNER JOIN employees AS b
ON a.EMPLOYEE_ID = b.EMPLOYEE_ID
WHERE b.EMAIL = emailEmployeer
INTO quantityJobs;
RETURN quantityJobs;
END $$

DELIMITER ;
