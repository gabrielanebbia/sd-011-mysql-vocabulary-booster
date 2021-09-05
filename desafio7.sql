SELECT UCASE(CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME)) AS 'Nome completo',
hjhis.START_DATE AS 'Data de início',
he.SALARY AS 'Salário'
FROM hr.employees AS he
INNER JOIN hr.job_history AS hjhis
ON hjhis.EMPLOYEE_ID = he.EMPLOYEE_ID
WHERE MONTH(hjhis.START_DATE) BETWEEN 1 AND 3
ORDER BY CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME), hjhis.START_DATE;
