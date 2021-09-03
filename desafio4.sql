SELECT jobs.JOB_TITLE AS 'Cargo', ROUND(AVG(SALARY), 2) AS 'Média salarial',
CASE 
  WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
  WHEN ROUND(AVG(employees.SALARY), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees
INNER JOIN hr.jobs AS jobs
ON employees.JOB_ID = jobs.JOB_ID
GROUP BY employees.JOB_ID
ORDER BY ROUND(AVG(employees.SALARY), 2) ASC, jobs.JOB_TITLE ASC;

-- Artigo de apoio: https://www.devmedia.com.br/clausulas-inner-join-left-join-e-right-join-no-sql-server/18930 - https://www.mysqltutorial.org/mysql-inner-join.aspx; 
