SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)
AS 'Nome completo funcionário 1',
emp.SALARY AS 'Salário funcionário 1',
emp.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(emp2.FIRST_NAME, ' ', emp2.LAST_NAME)
AS 'Nome completo funcionário 2',
emp2.SALARY AS 'Salário funcionário 2',
emp2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS emp
INNER JOIN hr.employees AS emp2 ON emp.JOB_ID = emp2.JOB_ID
WHERE emp.EMPLOYEE_ID <> emp2.EMPLOYEE_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) ASC,
CONCAT(emp2.FIRST_NAME, ' ', emp2.LAST_NAME) ASC;
