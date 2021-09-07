SELECT j.JOB_TITLE, (j.MAX_SALARY-j.MIN_SALARY) AS 'Variação Salarial', 
round(j.Min_SALARY/12,2) AS "Média mínima mensal", round(j.MAX_SALARY/12,2) AS "Média máxima mensal"
FROM jobs AS j
ORDER BY 2 ASC, 1;
