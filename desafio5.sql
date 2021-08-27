SELECT
  j.JOB_TITLE AS 'Cargo',
  (j.MAX_SALARY - j.MIN_SALARY) AS 'Variação Salarial',
  round(j.MIN_SALARY / 12) AS 'Média mínima mensal',
  Round(j.MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
  hr.jobs j
ORDER BY
  (j.MAX_SALARY - j.MIN_SALARY),
  j.JOB_TITLE;
