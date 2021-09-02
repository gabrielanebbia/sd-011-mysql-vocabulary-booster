SELECT
CONCAT(he1.FIRST_NAME, ' ', he1.LAST_NAME) AS 'Nome completo funcionário 1',
he1.SALARY AS 'Salário funcionário 1',
he1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(he2.FIRST_NAME, ' ', he2.LAST_NAME) AS 'Nome completo funcionário 2',
he2.SALARY AS 'Salário funcionário 2',
he2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS he1
INNER JOIN hr.employees AS he2
ON he1.JOB_ID = he2.JOB_ID AND he1.EMPLOYEE_ID != he2.EMPLOYEE_ID
ORDER BY CONCAT(he1.FIRST_NAME, ' ', he1.LAST_NAME), CONCAT(he2.FIRST_NAME, ' ', he2.LAST_NAME);
