SELECT
UPPER(CONCAT(emp.first_name, ' ', emp.last_name)) AS 'Nome completo',
jbhist.start_date AS 'Data de início',
emp.salary AS 'Salário'
FROM hr.job_history AS jbhist
INNER JOIN hr.employees AS emp
ON jbhist.employee_id = emp.employee_id
WHERE MONTH(jbhist.start_date) IN (1, 2, 3)
ORDER BY UPPER(CONCAT(emp.first_name, ' ', emp.last_name)), jbhist.start_date;
