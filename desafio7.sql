SELECT
UCASE(CONCAT(employees_table.FIRST_NAME, ' ', employees_table.LAST_NAME)) AS 'Nome completo',
history_table.START_DATE AS 'Data de início',
employees_table.SALARY AS 'Salário'
FROM
hr.employees AS employees_table
INNER JOIN
hr.job_history AS history_table ON employees_table.EMPLOYEE_ID = history_table.EMPLOYEE_ID
WHERE
MONTH(history_table.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC, `Data de início` ASC;
