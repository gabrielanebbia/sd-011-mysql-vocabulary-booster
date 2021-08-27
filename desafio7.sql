SELECT
UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
S.START_DATE AS 'Data de início',
E.SALARY AS 'Salário'
FROM employees E
INNER JOIN job_history S ON S.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(S.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC, `Data de início` ASC;
