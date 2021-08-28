SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo funcionário 1',
e.salary AS 'Salário funcionário 1',
e.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(ee.first_name, ' ', ee.last_name) AS 'Nome completo funcionário 2',
ee.salary AS 'Salário funcionário 2',
ee.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS e, hr.employees AS ee
WHERE e.job_id = ee.job_id AND e.EMPLOYEE_ID <> ee.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
