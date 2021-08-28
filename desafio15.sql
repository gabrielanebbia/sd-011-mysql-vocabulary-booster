USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(35))
BEGIN
SELECT CAST(AVG(employees.salary) AS DECIMAL(10, 2)) AS `Média salarial`
FROM employees AS employees
INNER JOIN jobs AS jobs
ON employees.job_id = jobs.job_id
WHERE jobs.job_title = jobTitle;
END $$

DELIMITER ;
