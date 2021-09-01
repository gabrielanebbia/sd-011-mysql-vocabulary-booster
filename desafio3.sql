SELECT
  job_title AS `Cargo`,
	AVG(max_salary - min_salary) AS `Diferença entre salários máximo e mínimo`
FROM
	hr.jobs
ORDER BY
	`Média Salarial`,
	`Cargo`;
