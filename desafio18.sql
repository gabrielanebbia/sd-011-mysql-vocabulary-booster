SELECT
CONCAT(e.FIRST_NAME , ' ',  e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(j.START_DATE,'%d%m%Y')  AS 'Data de início',
DATE_FORMAT(j.END_DATE,'%d%m%Y')  AS 'Data de rescisão',
ROUND(TIMESTAMPDIFF(MONTH, j.START_DATE, j.END_DATE)/12,2) AS 'DAnos trabalhado'
FROM employees e
INNER JOIN job_history j ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME , ' ',  e.LAST_NAME) ASC,
DATE_FORMAT(j.START_DATE,'%d%m%Y') ASC;
