-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
SELECT JOB_TITLE AS 'Cargo', ROUND(SUM(SALARY) / COUNT(JOB_TITLE), 2) AS 'Média salarial',
CASE
	WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
	WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
	WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
	WHEN ROUND(AVG(E.SALARY), 2) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.employees as E INNER JOIN hr.jobs as J ON J.JOB_ID = E.JOB_ID
GROUP BY JOB_TITLE
ORDER BY ROUND(AVG(SALARY), 2) ASC, JOB_TITLE;
