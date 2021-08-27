SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(jh.START_DATE,  '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
YEAR(jh.END_DATE) - YEAR(jh.START_DATE) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID ORDER BY `Nome completo`;
