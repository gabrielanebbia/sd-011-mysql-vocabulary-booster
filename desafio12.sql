-- CODIGO DA ISLENE GOMES - https://github.com/tryber/sd-011-mysql-vocabulary-booster/pull/93/files 
SELECT CONCAT(P.FIRST_NAME, " ",P.LAST_NAME) AS "Nome completo funcionário 1",
P.SALARY AS  "Salário funcionário 1",
P.PHONE_NUMBER AS "Telefone funcionário 1",
CONCAT(S.FIRST_NAME, " ",S.LAST_NAME) AS "Nome completo funcionário 2",
S.SALARY AS  "Salário funcionário 2",
S.PHONE_NUMBER AS "Telefone funcionário 2"
FROM hr.employees AS P, hr.employees AS S
WHERE P.JOB_ID = S.JOB_ID AND CONCAT(P.FIRST_NAME, " ",P.LAST_NAME) NOT LIKE CONCAT(S.FIRST_NAME, " ",S.LAST_NAME)
ORDER BY CONCAT(P.FIRST_NAME, " ",P.LAST_NAME), CONCAT(S.FIRST_NAME, " ",S.LAST_NAME);
