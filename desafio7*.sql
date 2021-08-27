SELECT UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
jh.start_date AS 'Data de início',
e.salary AS 'Salário'
FROM hr.employees e
INNER JOIN hr.job_history jh ON e.employee_id = jh.employee_id
ORDER BY UCASE(CONCAT(e.first_name, ' ', e.last_name)), jh.start_date;

-- pode ser que não seja jh.start_date e sim e.hire_date
-- aí não precisaria de inner join