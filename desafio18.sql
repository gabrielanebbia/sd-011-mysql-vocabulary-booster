SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)
AS 'Nome completo',
DATE_FORMAT(jbh.START_DATE, '%d/%m/%Y')
AS 'Data de início',
DATE_FORMAT(jbh.END_DATE, '%d/%m/%Y')
AS 'Data de rescisão',
ROUND(DATEDIFF(jbh.START_DATE) / 365, 2)
AS 'Anos trabalhados'
FROM hr.job_history AS jbh
INNER JOIN hr.employees AS emp
ON jbh.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME),
ROUND(DATEDIFF(jbh.END_DATE, jbh.START_DATE) / 365, 2);
-- Reference: https://www.w3schools.com/sql/func_sqlserver_datediff.asp
