SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
DATE_FORMAT(jbhist.START_DATE,'%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(jbhist.END_DATE,'%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(jbhist.END_DATE, jbhist.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jbhist
ON emp.EMPLOYEE_ID = jbhist.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
