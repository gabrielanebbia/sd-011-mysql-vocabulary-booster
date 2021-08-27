SELECT j.JOB_TITLE AS Cargo, (
SELECT ROUND(AVG(e.SALARY), 2)
FROM hr.employees AS e
WHERE j.JOB_ID = e.JOB_ID
GROUP BY JOB_ID
) AS `Média Salarial`, (
  SELECT
  CASE
    WHEN `Média Salarial` BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN `Média Salarial` BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN `Média Salarial` BETWEEN 7501 AND 10500 THEN 'Sênior'
    ELSE 'CEO'
    END
) AS Senioridade
FROM hr.jobs AS j
ORDER BY `Média Salarial` ASC, Cargo ASC;
