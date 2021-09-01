SELECT 
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(jbh.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jbh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jbh.END_DATE, jbh.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM job_history AS jbh
INNER JOIN employees AS emp
ON emp.EMPLOYEE_ID = jbh.EMPLOYEE_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME);
