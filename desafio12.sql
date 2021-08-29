SELECT
CONCAT(employee_one.FIRST_NAME, ' ', employee_one.LAST_NAME) AS 'Nome completo funcionário 1',
employee_one.SALARY AS 'Salário funcionário 1',
employee_one.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(employee_two.FIRST_NAME, ' ', employee_two.LAST_NAME) AS 'Nome completo funcionário 2',
employee_two.SALARY AS 'Salário funcionário ',
employee_two.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
hr.employees AS employee_one,
hr.employees AS employee_two
WHERE employee_one.JOB_ID = employee_two.JOB_ID
AND employee_one.EMPLOYEE_ID <> employee_two.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`ASC, `Nome completo funcionário 2`;
