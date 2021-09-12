SELECT
    CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
    DATE_FORMAT(`START_DATE`, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(`END_DATE`, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND(DATEDIFF(job_history.END_DATE, job_history.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees AS employees
    INNER JOIN 
        hr.job_history AS job_history ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
