DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emplEmail VARCHAR(150))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_quantity_history INT;
SELECT 
COUNT(*)
FROM
hr.employees AS empls
INNER JOIN
hr.job_history AS j_h ON empls.EMPLOYEE_ID = j_h.EMPLOYEE_ID
WHERE EMAIL = emplEmail INTO job_quantity_history;
RETURN job_quantity_history;
END $$

DELIMITER ;