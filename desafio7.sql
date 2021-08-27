SELECT UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
H.START_DATE AS 'Data de início',
E.SALARY AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.job_history AS H ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs AS J ON J.JOB_ID = H.JOB_ID
WHERE MONTH(H.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC, `Data de início` ASC;