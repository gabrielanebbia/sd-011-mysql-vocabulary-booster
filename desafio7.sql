SELECT
CONCAT(UCASE(e.first_name) , ' ' , UCASE(e.last_name)) AS `Nome completo`,
j_h.start_date AS 'Data de início',
e.salary AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j_h
ON e.employee_id = j_h.employee_id
WHERE MONTH(j_h.start_date) IN (1, 2, 3)
ORDER BY CONCAT(UCASE(e.first_name) , ' ' , UCASE(e.last_name)), j_h.start_date;
