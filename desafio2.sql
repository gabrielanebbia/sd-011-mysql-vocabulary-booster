SELECT j.JOB_TITLE AS 'Cargo',
CASE
        WHEN e.salary BETWEEN 5000 AND 10000 THEN 'Baixo'
        WHEN e.salary BETWEEN 10001 AND 20000 THEN 'Médio'
        WHEN e.salary BETWEEN 20001 AND 30000 THEN 'Alto'
        WHEN e.salary > 30000 THEN 'Altíssimo'
    END AS 'Nível'
FROM employees AS e
LEFT JOIN jobs AS j
ON e.job_id = j.job_id
ORDER BY j.JOB_TITLE;
