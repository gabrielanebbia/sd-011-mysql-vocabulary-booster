SELECT job.JOB_TITLE AS Cargo, ROUND(AVG(emp.SALARY), 2) AS 'Média salarial', 
CASE
        WHEN AVG(emp.SALARY) >= 2000 AND AVG(emp.SALARY) <= 5800 THEN 'Júnior'
        WHEN AVG(emp.SALARY) >= 5801 AND AVG(emp.SALARY) <= 7500 THEN 'Pleno'
        WHEN AVG(emp.SALARY) >= 7501 AND AVG(emp.SALARY) <= 10500 THEN 'Sênior'
        WHEN AVG(emp.SALARY) > 10500 THEN 'CEO'
    END AS Senioridade
    FROM jobs AS job
INNER JOIN employees AS emp
ON emp.JOB_ID = job.JOB_ID
GROUP BY job.JOB_TITLE
ORDER BY AVG(emp.SALARY), job.JOB_TITLE;
