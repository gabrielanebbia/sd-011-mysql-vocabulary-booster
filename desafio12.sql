-- 12 - Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo
SELECT 
DISTINCT
CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME) as `Nome completo funcionário 1`,
A.SALARY as 'Salário funcionário 1',
A.PHONE_NUMBER as 'Telefone funcionário 1',
CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME) as `Nome completo funcionário 2`,
B.SALARY as 'Salário funcionário 2',
B.PHONE_NUMBER as 'Telefone funcionário 2'
FROM hr.employees AS A, hr.employees AS B
WHERE A.JOB_ID = B.JOB_ID
AND CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME) <> CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME)
ORDER BY CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME) ASC, CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME);
