SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo funcionário 1',
e.SALARY 'Salário funcionário 1',
e.PHONE_NUMBER 'Telefone funcionário 1',
CONCAT(ee.FIRST_NAME, ' ', ee.LAST_NAME) 'Nome completo funcionário 2',
ee.SALARY 'Salário funcionário 2',
ee.PHONE_NUMBER 'Telefone funcionário 2'
FROM hr.employees e, hr.employees ee;
WHERE e.JOB_ID = ee.JJOB_ID AND
e.EMPLOYEE_ID <> ee.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
