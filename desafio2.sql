SELECT job_title AS Cargo, 
CASE 
WHEN max_salary > 30000 THEN 'Altissimo'
WHEN max_salary > 20000 THEN 'Alto'
WHEN max_salary > 10000 THEN 'Médio'
WHEN max_salary <= 10000 THEN 'Baixo'
END AS Nivel
FROM hr.jobs
ORDER BY job_title ASC;
