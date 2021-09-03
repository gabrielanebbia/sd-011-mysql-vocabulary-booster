SELECT UPPER(CONCAT(emps.FIRST_NAME,' ', emps.LAST_NAME)) AS 'Nome completo',
jobhis.START_DATE AS 'Data de início',
emps.SALARY AS 'Salário'
FROM employees AS emps
INNER JOIN job_history AS jobhis
ON emps.EMPLOYEE_ID = jobhis.EMPLOYEE_ID
WHERE MONTH(jobhis.START_DATE) IN (1, 2, 3)
ORDER BY UPPER(CONCAT (emps.FIRST_NAME,' ', emps.LAST_NAME)) ASC, jobhis.START_DATE ASC;

-- Artigo de apoio: https://www.w3schools.com/mysql/func_mysql_case.asp
