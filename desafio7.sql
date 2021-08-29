SELECT UCASE(CONCAT(t2.FIRST_NAME,' ',t2.LAST_NAME)) AS 'Nome completo',
t1.START_DATE AS 'Data de início',
t2.SALARY AS 'Sálario'
FROM hr.job_history AS t1
INNER JOIN hr.employees AS t2 
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
WHERE MONTH(START_DATE) BETWEEN '01' AND '03'
ORDER BY CONCAT(t2.FIRST_NAME,' ', t2.LAST_NAME), t1.START_DATE ASC;