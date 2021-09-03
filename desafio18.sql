SELECT
CONCAT(em.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(jhis.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jhis.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jhis.END_DATE, jhis.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM
job_history AS jhis
INNER JOIN
employees AS em
ON em.EMPLOYEE_ID = jhis.EMPLOYEE_ID
ORDER BY
1 ASC,
4 ASC;
