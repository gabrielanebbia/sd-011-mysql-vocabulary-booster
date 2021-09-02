SELECT CONCAT(emp1.FIRST_NAME, ' ', emp1.LAST_NAME) AS 'Nome completo funcionário 1',
emp1.SALaRY AS 'Salário funcionário 1',
emp1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(emp1.FIRST_NAME, ' ', emp1.LAST_NAME) AS 'Nome completo funcionário 2',
emp1.SALaRY AS 'Salário funcionário 2',
emp1.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS emp1, hr.employees AS emp2
WHERE (SELECT emp2.JOB_ID 
WHERE emp1.EMPLOYEE_ID <> emp2.EMPLOYEE_ID) = emp1.JOB_ID
ORDER BY 
CONCAT(emp1.FIRST_NAME, ' ', emp1.LAST_NAME),
CONCAT(emp2.FIRST_NAME, ' ', emp2.LAST_NAME);
