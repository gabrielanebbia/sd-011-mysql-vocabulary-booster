SELECT 
    jobs.JOB_TITLE AS Cargo,
    ROUND(AVG(employees.SALARY), 2) AS 'Média Salarial',
    CASE
        WHEN
            AVG(employees.SALARY) >= 2000
                AND AVG(employees.SALARY) <= 5800
        THEN
            'Júnior'
        WHEN
            AVG(employees.SALARY) > 5800
                AND AVG(employees.SALARY) <= 7500
        THEN
            'Pleno'
        WHEN
            AVG(employees.SALARY) > 7500
                AND AVG(employees.SALARY) <= 10500
        THEN
            'Sênior'
        WHEN AVG(employees.SALARY) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.jobs AS jobs
        INNER JOIN
    hr.employees AS employees ON jobs.JOB_ID = employees.JOB_ID
GROUP BY employees.JOB_ID
ORDER BY ROUND(AVG(employees.SALARY), 2) ASC , jobs.JOB_TITLE ASC;
