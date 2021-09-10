SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) as 'Nome completo funcionário 1',
employees.SALARY as 'Salário Funcionário 1',
employees.PHONE_NUMBER as 'Telefone Funcionário 1',
CONCAT(employees2.FIRST_NAME, ' ', employees2.LAST_NAME) as 'Nome completo funcionário 2',
employees2.SALARY as 'Salário Funcionário 2',
employees2.PHONE_NUMBER as 'Telefone Funcionário 2'
from hr.employees as employees, hr.employees as employees2
WHERE employees.JOB_ID = employees2.JOB_ID
HAVING `Nome completo funcionário 1` <> `Nome completo funcionário 2`
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
