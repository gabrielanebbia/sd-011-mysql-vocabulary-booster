SELECT (
  SELECT JOB_TITLE 
  FROM hr.jobs
  WHERE e.JOB_ID = JOB_ID
) AS `Cargo`,
ROUND(AVG(SALARY), 2) AS `Média salarial`,
CASE 
  WHEN AVG(SALARY) > 10500 THEN 'CEO'
  WHEN AVG(SALARY) > 7501 THEN 'Sênior'
  WHEN AVG(SALARY) > 5801 THEN 'Pleno'
  ELSE 'Júnior'
END AS `Senioridade`
FROM hr.employees AS e
GROUP BY JOB_ID
ORDER BY `Média salarial`, `Cargo`;
