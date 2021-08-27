SELECT
    jobs.JOB_TITLE AS Cargo,
    ROUND(AVG(SALARY), 2) AS "Média salarial",
    CASE
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS Senioridade
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs
ON employees.JOB_ID = jobs.JOB_ID
GROUP BY Cargo
ORDER BY ROUND(AVG(SALARY), 2) ASC, Cargo ASC;
