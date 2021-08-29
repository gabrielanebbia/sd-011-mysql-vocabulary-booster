SELECT
UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
JH.START_DATE AS `Data de início`,
E.SALARY AS `Salário`
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON E.JOB_ID = JH.JOB_ID
WHERE MONTH(JH.START_DATE) IN (1, 2, 3)
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) ASC, JH.START_DATE ASC;