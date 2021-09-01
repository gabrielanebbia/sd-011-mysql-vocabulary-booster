SELECT
  j.job_title AS `Cargo`,
  (j.max_salary - j.min_salary) AS `Variação Salarial`,
  ROUND(AVG(j.min_salary / 12), 2) AS `Média mínima mensal`,
  ROUND(AVG(j.max_salary / 12), 2) AS `Média máxima mensal`
FROM
  hr.jobs AS j
INNER JOIN
  hr.employees AS e ON j.job_id = e.job_id
GROUP BY
	`Cargo`
ORDER BY
  `Variação Salarial`,
	`Cargo`;
