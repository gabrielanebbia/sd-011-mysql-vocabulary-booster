SELECT j.JOB_TITLE AS 'Cargo',
e.`Média salarial`,
CASE
	WHEN e.`Média salarial` BETWEEN 2000 AND 5800 THEN 'Júnior'
	WHEN e.`Média salarial` BETWEEN 5801 AND 7500 THEN 'Pleno'
	WHEN e.`Média salarial` BETWEEN 7501 AND 10500 THEN 'Sênior'
	ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN (
	SELECT JOB_ID, (
		SELECT ROUND(AVG(SALARY), 2) FROM hr.employees
		WHERE JOB_ID = hr.jobs.JOB_ID
	) AS `Média salarial` FROM hr.jobs
) AS e
ON j.JOB_ID = e.JOB_ID
ORDER BY e.`Média salarial`, Cargo;
