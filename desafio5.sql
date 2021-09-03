SELECT JOB_TITLE AS 'Cargo', (MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
ROUND((MIN_SALARY / 12), 2) AS 'Média mínima mensal',
ROUND((MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY) ASC, JOB_TITLE ASC;

-- Artigo de apoio: https://www.devmedia.com.br/clausulas-inner-join-left-join-e-right-join-no-sql-server/18930 - https://www.mysqltutorial.org/mysql-inner-join.aspx; 
