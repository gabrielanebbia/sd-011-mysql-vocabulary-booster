SELECT JOB_TITLE Cargo,
(MAX_SALARY - MIN_SALARY) `Variação Salarial`,
ROUND(AVG(MIN_SALARY / 12), 2) `Média mínima mensal`,
ROUND(AVG(MAX_SALARY / 12), 2) `Média máxima mensal`
FROM jobs
GROUP BY JOB_TITLE, `Variação Salarial`
ORDER BY MAX_SALARY - MIN_SALARY, JOB_TITLE;
