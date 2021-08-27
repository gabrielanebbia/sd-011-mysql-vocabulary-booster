SELECT
jobs_table.JOB_TITLE AS 'Cargo',
round(AVG(employees_table.salary), 2) AS 'Média salarial',
CASE
WHEN round(AVG(employees_table.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN round(AVG(employees_table.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN round(AVG(employees_table.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN round(AVG(employees_table.salary), 2) > 10500 THEN 'CEO'
ELSE 'Não categorizado'
END AS 'Senioridade'    
FROM hr.employees AS employees_table INNER JOIN hr.jobs AS jobs_table
ON employees_table.JOB_ID = jobs_table.JOB_ID
GROUP BY Cargo
ORDER BY `Média Salarial` ASC, Cargo ASC;
