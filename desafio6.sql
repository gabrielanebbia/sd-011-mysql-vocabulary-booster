SELECT CONCAT(empl.FIRST_NAME, ' ', empl.LAST_NAME) AS 'Nome Completo',
j.JOB_TITLE AS 'Cargo',
j_h.START_DATE AS 'Data de início do cargo',
dept.DEPARTMENT_NAME AS 'Departamento'
FROM
hr.employees AS empl
INNER JOIN
hr.job_history AS j_h ON empl.EMPLOYEE_ID = j_h.EMPLOYEE_ID
INNER JOIN
hr.departments AS dept ON j_h.DEPARTMENT_ID = dept.DEPARTMENT_ID
INNER JOIN
hr.jobs AS j ON j_h.JOB_ID = j.JOB_ID
ORDER BY `Nome Completo` DESC , `Cargo`;
