SELECT 
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
j.JOB_TITLE 'Cargo',
jh.START_DATE 'Data de início do cargo',
d.DEPARTMENT_NAME 'Departamento'
FROM hr.employees e
INNER JOIN job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN jobs j ON j.JOB_ID = jh.JOB_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ',e.LAST_NAME) DESC, j.JOB_TITLE;
