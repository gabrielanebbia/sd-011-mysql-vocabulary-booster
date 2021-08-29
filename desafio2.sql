SELECT job_title as 'Cargo',
CASE 
WHEN max_salary > 30000 THEN 'Altíssimo'
WHEN max_salary >= 20001 THEN 'Alto'
WHEN max_salary >= 10001 THEN 'Médio'
ELSE 'Baixo'
END as 'Nível'
FROM hr.jobs
ORDER BY Cargo ASC;
-- Programmer = Baixo :(
