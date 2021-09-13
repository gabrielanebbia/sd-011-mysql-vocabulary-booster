SELECT CONCAT(emp.FIRST_NAME, + ' ', + emp.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(jobh.START_DATE, '%d/%m/%Y')AS 'Data de início',
DATE_FORMAT(jobh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jobh.END_DATE, jobh.START_DATE)/365, 2) AS 'Anos trabalhados'

FROM hr.employees AS emp
INNER JOIN hr.job_history AS jobh
ON emp.EMPLOYEE_ID = jobh.EMPLOYEE_ID

ORDER BY `Nome completo` ASC, `Anos trabalhados` ASC; 


-- smart articles: https://www.mysqltutorial.org/mysql-date/
-- https://www.mysqltutorial.org/mysql-datediff.aspx
