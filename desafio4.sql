SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SELECT t2.JOB_TITLE AS Cargo, ROUND(AVG(t1.SALARY),2) AS `Média salarial`,
CASE
WHEN t1.SALARY BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN t1.SALARY BETWEEN 5801 AND 7550 THEN 'Pleno'
WHEN t1.SALARY BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN t1.SALARY > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
GROUP BY t2.JOB_TITLE
ORDER BY `Média salarial`, Cargo ASC;
