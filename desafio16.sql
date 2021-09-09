CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INTEGER READS SQL DATA
BEGIN
SELECT
COUNT(*)
FROM hr.employees AS e
INNER JOIN hr.job_history AS j_h
ON e.employee_id = j_h.employee_id
WHERE e.email = email;
END $$
