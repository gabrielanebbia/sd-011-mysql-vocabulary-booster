SELECT jb.JOB_TITLE AS 'Cargo', ROUND(AVG(ep.SALARY), 2) AS 'Média salarial', CASE WHEN ROUND(AVG(ep.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior' WHEN ROUND(AVG(ep.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno' WHEN ROUND(AVG(ep.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior' ELSE 'CEO' END AS 'Senioridade' FROM hr.employees AS ep INNER JOIN hr.jobs AS jb ON ep.JOB_ID = jb.JOB_ID GROUP BY jb.JOB_TITLE ORDER BY `Média salarial`, 'Cargo';