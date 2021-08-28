SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
DATE_FORMAT(jb.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jb.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(END_DATE,START_DATE)/365, 2) AS `Anos trabalhados`
FROM hr.job_history AS jb
INNER JOIN hr.employees AS e
ON jb.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados` ASC;
