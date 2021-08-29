SELECT UPPER(CONCAT(emp.first_name, ' ', emp.last_name)) AS 'Nome completo',
jbh.start_date AS 'Data de início',
emp.salary AS 'Salário'
FROM hr.job_history AS jbh
INNER JOIN hr.employees AS emp 
ON jbh.employee_id = emp.employee_id
WHERE MONTH(jbh.start_date) IN (1, 2, 3)
ORDER BY UPPER(CONCAT(emp.first_name, ' ', emp.last_name)), jbh.start_date;
