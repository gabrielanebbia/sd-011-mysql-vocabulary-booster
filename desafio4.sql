SELECT hj.JOB_TITLE AS 'Cargo', ROUND(AVG(he.SALARY), 2) AS 'Média salarial',
CASE
	WHEN ROUND(AVG(he.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
	WHEN ROUND(AVG(he.SALARY), 2) < 7500 THEN 'Pleno'
	WHEN ROUND(AVG(he.SALARY), 2) < 10500 THEN 'Sênior'
	WHEN ROUND(AVG(he.SALARY), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees AS he
INNER JOIN hr.jobs AS hj ON he.JOB_ID = hj.JOB_ID
GROUP BY he.JOB_ID
ORDER BY ROUND(AVG(he.SALARY), 2), Cargo;