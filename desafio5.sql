SELECT JOB_TITLE as 'Cargo', (MAX_SALARY - MIN_SALARY) as 'Variação Salarial', ROUND((MIN_SALARY / 12), 2) as 'Média Mínima Mensal',
ROUND((MAX_SALARY / 12), 2) as 'Média Máxima Mensal'
FROM hr.jobs 
ORDER BY `Variação Salarial`, `Cargo`;
