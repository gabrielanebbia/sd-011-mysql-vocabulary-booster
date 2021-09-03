-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro,
-- fevereiro ou março
SELECT UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
j_h.start_date AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.job_history AS j_h
INNER JOIN hr.employees AS e
ON e.employee_id = j_h.employee_id AND MONTH(start_date) IN(1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;