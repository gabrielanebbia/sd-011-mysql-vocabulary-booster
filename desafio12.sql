-- 12 - Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo
SELECT CONCAT(E1.FIRST_NAME, ' ', E1.LAST_NAME) AS 'Nome completo funcionário 1', 
E1.SALARY AS 'Salário funcionário 1', 
E1.PHONE_NUMBER AS 'Telefone funcionário 1', 
CONCAT(E2.FIRST_NAME, ' ', E2.LAST_NAME) AS 'Nome completo funcionário 2', 
E2.SALARY AS 'Salário funcionário 2', 
E2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS E1, hr.employees AS E2
WHERE E1.JOB_ID = E2.JOB_ID
and E1.EMPLOYEE_ID <> E2.EMPLOYEE_ID
ORDER BY CONCAT(E1.FIRST_NAME, ' ', E1.LAST_NAME), CONCAT(E2.FIRST_NAME, ' ', E2.LAST_NAME);
