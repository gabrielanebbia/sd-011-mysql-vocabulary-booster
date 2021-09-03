/* SELECT j.JOB_TITLE AS Cargo,
ROUND(j.MAX_SALARY - j.MIN_SALARY , 2) AS `Variação Salarial`,
ROUND(MIN(e.SALARY), 2) AS  `Média mínima mensal`,
ROUND(MAX(e.SALARY), 2) AS  `Média mínima mensal`
 FROM hr.employees AS e 
 INNER JOIN hr.jobs AS j 
 ON e.JOB_ID = j.JOB_ID 
 GROUP BY Cargo
 ORDER BY `Variação Salarial`, Cargo; */
SELECT JOB_TITLE AS 'Cargo', 
(MAX_SALARY - MIN_SALARY) 'Variação Salarial',
ROUND((MIN_SALARY / 12),2) 'Média mínima mensal',
ROUND((MAX_SALARY / 12),2) 'Média máxima mensal'
FROM hr.jobs
ORDER BY `Variação Salarial`, Cargo;
