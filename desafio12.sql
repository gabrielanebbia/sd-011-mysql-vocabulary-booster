SELECT CONCAT(c1.FIRST_NAME, ' ', c1.LAST_NAME) AS 'Nome completo do funcionário 1',
c1.SALARY AS 'Salário funcionário 1',
c1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(c2.FIRST_NAME, ' ', c2.LAST_NAME) AS 'Nome completo do funcionário 2',
c2.SALARY AS 'Salário funcionário 2',
c2.PHONE_NUMBER AS 'Telefone do funcionário 2'
FROM hr.employees AS c1, hr.employees AS c2
WHERE c1.JOB_ID = c2.JOB_ID AND CONCAT(c1.FIRST_NAME, ' ', c1.LAST_NAME) <> CONCAT(c2.FIRST_NAME, ' ', c2.LAST_NAME)
ORDER BY CONCAT(c1.FIRST_NAME, ' ', c1.LAST_NAME), CONCAT(c2.FIRST_NAME, ' ', c2.LAST_NAME);
