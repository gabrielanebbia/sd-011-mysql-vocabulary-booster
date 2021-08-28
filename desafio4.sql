SELECT job.JOB_TITLE AS Cargo, ROUND(AVG(employee.SALARY), 2) AS 'Média salarial',
CASE
WHEN AVG(employee.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(employee.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(employee.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(employee.SALARY) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees AS employee
INNER JOIN hr.jobs AS job ON job.JOB_ID = employee.JOB_ID
GROUP BY job.JOB_TITLE
ORDER BY AVG(employee.SALARY), job.JOB_TITLE;
