DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(input_email VARCHAR(100)) 
RETURNS int READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT COUNT(*)
FROM hr.job_history
WHERE employee_id IN (
SELECT employee_id 
FROM hr.employees
WHERE email = input_email
)
INTO total_jobs;
RETURN total_jobs;
END $$
DELIMITER;
