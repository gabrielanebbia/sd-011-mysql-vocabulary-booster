CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_media_por_cargo`(IN position_name VARCHAR(50))
BEGIN
	SELECT ROUND(AVG(salary), 2) AS 'Média salarial'
	FROM hr.employees
	WHERE job_id IN (
		SELECT job_id
		FROM hr.jobs
        WHERE job_title = position_name
	);
END
