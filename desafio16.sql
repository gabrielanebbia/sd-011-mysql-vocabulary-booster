DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE employee_count_jobs INT;
SELECT count(jh.EMPLOYEE_ID) FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE email = e.EMAIL
INTO employee_count_jobs;
RETURN employee_count_jobs;

END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("JTAYLOR");
