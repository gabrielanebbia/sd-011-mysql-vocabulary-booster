SELECT
jb.JOB_TITLE AS 'Cargo',
(jb.MAX_SALARY - jb.MIN_SALARY) AS 'Variação Salarial',
ROUND((jb.MIN_SALARY / 12), 2) AS 'Média mínima mensal',
ROUND((jb.MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM hr.jobs AS jb
ORDER BY `Variação Salarial` ASC;
