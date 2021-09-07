SELECT j.JOB_TITLE AS col1, j.MAX_SALARY-j.MIN_SALARY AS 'Variação Salarial', 
j.Min_SALARY/12 AS "Média mínima mensal", j.MAX_SALARY/12 AS "Média máxima mensal"
FROM jobs AS j
ORDER BY 'Variação Salarial';
