SELECT distinct  UCASE(CONCAT(emp.first_name, ' ', emp.last_name)) AS `Nome completo`,
his.START_DATE AS 'Data de início',
emp.SALARY
FROM hr.employees AS emp
INNER JOIN hr.job_history AS his
ON emp.EMPLOYEE_ID =  his.EMPLOYEE_ID
WHERE MONTH(his.START_DATE) < 4
ORDER BY CONCAT(emp.first_name, ' ', emp.last_name) ASC, his.START_DATE ASC;
