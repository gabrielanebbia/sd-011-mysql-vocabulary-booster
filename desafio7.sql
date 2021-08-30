SELECT UPPER(CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME)) AS 'Nome completo',
jhis.START_DATE AS 'Data de início',
emp.SALARY AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jhis
ON emp.EMPLOYEE_ID = jhis.EMPLOYEE_ID
WHERE MONTH(jhis.START_DATE) BETWEEN 1 AND 3
ORDER BY 'Nome completo', 'Data de início';
