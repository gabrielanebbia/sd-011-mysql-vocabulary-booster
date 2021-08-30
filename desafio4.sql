SELECT 
j.JOB_TITLE, 
ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
CASE
WHEN AVG(e.SALARY) >= 2000 AND AVG(e.SALARY) <= 5800 THEN 'Júnior'
WHEN AVG(e.SALARY) >= 5801 AND AVG(e.SALARY) <= 7500 THEN 'Pleno'
WHEN AVG(e.SALARY) >= 7501 AND AVG(e.SALARY) <= 10500 THEN 'Sênior'
WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.employees as e
INNER JOIN hr.jobs as j
ON e.JOB_ID = j.JOB_ID
GROUP BY JOB_TITLE
ORDER BY ROUND(AVG(e.SALARY), 2) ASC;
