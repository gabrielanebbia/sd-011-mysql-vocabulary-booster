SELECT (CONCAT(c1.first_name, ' ', c1.last_name)) AS 'Nome completo funcionário 1',
c1.salary AS 'Salário funcionário 1',
c1.phone_number AS 'Telefone funcionário 1',
(CONCAT(c2.first_name, ' ', c2.last_name)) AS 'Nome completo funcionário 2',
c2.salary AS 'Salário funcionário 2',
c2.phone_number AS 'Telefone funcionário 2'
FROM employees AS c1, employees AS c2
WHERE c1.job_id = c2.job_id
AND c1.employee_id <> c2.employee_id
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
