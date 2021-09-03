SELECT (concat(e1.First_name,' ',e1.Last_Name)) AS 'Nome completo funcionário 1',
e1.SALARY AS 'Salário funcionário 1',
e1.PHONE_NUMBER as 'Telefone funcionário 1',
(concat(e2.First_name,' ',e2.Last_Name)) AS 'Nome completo funcionário 2',
e2.SALARY AS 'Salário funcionário 2',
e2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS e1, hr.employees AS e2
WHERE e1.JOB_ID = e2.JOB_ID
HAVING `Nome completo funcionário 1` != `Nome completo funcionário 2`
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
