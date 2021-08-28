DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT
COUNT(jh.department_id) AS 'Quantity'
FROM job_history AS jh
INNER JOIN employees AS e
ON jh.employee_id = e.employee_id 
INNER JOIN departments AS d
ON jh.department_id = d.department_id
where e.email LIKE email INTO quantity;
RETURN quantity;
END $$
DELIMITER ;
