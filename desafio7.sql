SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
jb.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.job_history AS jb
INNER JOIN hr.employees AS e
ON jb.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jb.START_DATE) <= 3
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), jb.START_DATE;
