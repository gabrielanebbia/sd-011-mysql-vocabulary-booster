SELECT jobs_table.JOB_ID AS Cargo,
ROUND(AVG(employees_table.SALARY), 2) AS 'Média salarial',
CASE
WHEN MAX_SALARY BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN MAX_SALARY BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN MAX_SALARY BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN MAX_SALARY > 10500 THEN 'CEO'
ELSE 'Não categorizado'
END AS 'Senioridade'
FROM hr.employees AS employees_table
INNER JOIN hr.jobs AS jobs_table
ON employees_table.JOB_ID = jobs_table.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial` ASC, Cargo ASC;
