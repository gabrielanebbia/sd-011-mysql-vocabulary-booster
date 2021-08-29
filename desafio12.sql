SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo funcionário 1',
E.SALARY AS 'Salário funcionário 1',
E.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(E2.FIRST_NAME, ' ', E2.LAST_NAME) AS 'Nome completo funcionário 1',
E2.SALARY AS 'Salário funcionário 1',
E2.PHONE_NUMBER AS 'Telefone funcionário 1'
FROM hr.employees AS E
INNER JOIN hr.employees AS E2
ON E.JOB_ID = E2.JOB_ID AND E.LAST_NAME <> E2.LAST_NAME
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) ASC, CONCAT(E2.FIRST_NAME, ' ', E2.LAST_NAME) ASC;
