SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(JH.START_DATE, "%d/%M/%Y") AS 'Data de início',
DATE_FORMAT(JH.END_DATE, "%d/%M/%Y") AS 'Data de rescisão',
(YEAR(JH.END_DATE) - YEAR(JH.START_DATE)) AS 'Anos trabalhados'
FROM employees AS E
INNER JOIN job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
