SELECT CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME) AS 'Nome completo funcionário 1',
he.SALARY AS 'Salário funcionário 1',
he.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(he2.FIRST_NAME, ' ', he2.LAST_NAME) AS 'Nome completo funcionário 2',
he2.SALARY AS 'Salário funcionário 2',
he2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM 
hr.employees AS he,
hr.employees AS he2
WHERE he.EMPLOYEE_ID <> he2.EMPLOYEE_ID AND he.JOB_ID = he2.JOB_ID
ORDER BY CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME), CONCAT(he2.FIRST_NAME, ' ', he2.LAST_NAME);
