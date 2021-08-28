USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE jobs_quantity INT;
    SELECT COUNT(*)
    INTO jobs_quantity
    FROM job_history AS jobHistory
    INNER JOIN employees AS employees
    ON jobHistory.employee_id = employees.employee_id
    WHERE employees.email = employee_email;
    RETURN jobs_quantity;
END $$

DELIMITER ;
