SELECT
CONCAT(employees_table.FIRST_NAME, ' ', employees_table.LAST_NAME) AS 'Nome completo',
jobs_table.JOB_TITLE AS 'Cargo',
history_table.START_DATE AS 'Data de início do cargo',
departments_table.DEPARTMENT_NAME AS 'Departamento'
FROM
hr.employees AS employees_table
INNER JOIN
hr.job_history AS history_table ON employees_table.EMPLOYEE_ID = history_table.EMPLOYEE_ID
INNER JOIN
hr.jobs AS jobs_table ON history_table.JOB_ID = jobs_table.JOB_ID
INNER JOIN
hr.departments AS departments_table ON history_table.DEPARTMENT_ID = departments_table.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
