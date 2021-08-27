SELECT 
CONCAT(em1.FIRST_NAME, ' ' ,em1.LAST_NAME) AS 'Nome completo funcionário 1',
em1.SALARY AS 'Salário funcionário 1',
em1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(em2.FIRST_NAME, ' ' ,em2.LAST_NAME) AS 'Nome completo funcionário 2',
em2.SALARY AS 'Salário funcionário 2',
em2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS em1, hr.employees AS em2
WHERE em1.JOB_ID = em2.JOB_ID
AND em1.EMPLOYEE_ID <> em2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
