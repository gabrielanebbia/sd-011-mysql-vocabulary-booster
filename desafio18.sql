SELECT 
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(jh.START_DATE,'%d/%m/%Y') AS 'Data de início', -- DATE_FORMAT (src: https://stackoverflow.com/questions/10637581/mysql-date-format-dd-mm-yyyy-select-query) 
DATE_FORMAT(jh.END_DATE,'%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365.25, 2) AS 'Anos trabalhados' -- 365.25 (src: https://stackoverflow.com/questions/49383907/convert-days-to-years-as-in-following-format)
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
