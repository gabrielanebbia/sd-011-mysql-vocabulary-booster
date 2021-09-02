-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
SELECT JOB_TITLE AS 'Cargo', ROUND(SUM(SALARY) / COUNT(JOB_TITLE), 2) AS 'Média salarial',
  CASE
  WHEN AVG(SALARY) >= 2000 AND AVG(SALARY) <= 5800 THEN 'Júnior'
  WHEN AVG(SALARY) >= 5801 AND AVG(SALARY) <= 7500 THEN 'Pleno'
  WHEN AVG(SALARY) >= 7501 AND AVG(SALARY) <= 10500 THEN 'Sênior'
  WHEN AVG(SALARY) > 10500 THEN 'CEO'
  END AS Senioridad
FROM hr.employees as e INNER JOIN hr.jobs as j ON j.JOB_ID = e.JOB_ID
GROUP BY JOB_TITLE
ORDER BY ROUND(AVG(SALARY), 2) ASC, JOB_TITLE;
