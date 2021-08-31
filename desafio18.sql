SELECT
CONCAT(t2.FIRST_NAME, " ", t2.LAST_NAME) AS "Nome completo",
DATE_FORMAT(t1.START_DATE, "%d/%m/%Y") AS "Data de início",
DATE_FORMAT(t1.END_DATE, "%d/%m/%Y") AS "Data de rescisão",
ROUND(DATEDIFF(t1.END_DATE, t1.START_DATE) / 365, 2)
AS "Anos trabalhados"
FROM
hr.job_history AS t1
INNER JOIN
hr.employees AS t2
ON t2.EMPLOYEE_ID = t1.EMPLOYEE_ID
ORDER BY
`Nome completo`,
`Anos trabalhados`;
