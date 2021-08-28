SELECT upper(concat(e.first_name, ' ', e.last_name)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees as e
INNER JOIN hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE 
month(jh.start_date) BETWEEN 1 and 3
ORDER BY upper(concat(e.FIRST_NAME, '', e.LAST_NAME)), jh.START_DATE asc;
