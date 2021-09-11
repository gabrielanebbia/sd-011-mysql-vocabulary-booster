USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(jobs VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE get_jobs INT;
SELECT COUNT(*)
FROM employees AS e
INNER JOIN job_history AS h
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = jobs INTO get_jobs;
RETURN get_jobs;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
