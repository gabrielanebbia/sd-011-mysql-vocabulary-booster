SELECT J.JOB_TITLE AS 'Cargo',
(SELECT ROUND(AVG(SALARY), 2)
FROM hr.employees
WHERE JOB_ID = J.JOB_ID)
AS 'Média salarial',
CASE
WHEN 
(SELECT ROUND(AVG(SALARY), 2)
FROM hr.employees
WHERE JOB_ID = J.JOB_ID) <= 5800 THEN 'Júnior'
WHEN
(SELECT ROUND(AVG(SALARY), 2)
FROM hr.employees
WHERE JOB_ID = J.JOB_ID)
BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN 
(SELECT ROUND(AVG(SALARY), 2)
FROM hr.employees
WHERE JOB_ID = J.JOB_ID)
BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs J
ORDER BY 
(SELECT ROUND(AVG(SALARY), 2)
FROM hr.employees
WHERE JOB_ID = J.JOB_ID),
JOB_TITLE;