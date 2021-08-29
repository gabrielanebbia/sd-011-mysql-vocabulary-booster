SELECT UPPER((CONCAT(empl.FIRST_NAME, ' ', empl.LAST_NAME))) AS 'Nome completo',
j_h.START_DATE AS 'Data de início',
empl.SALARY AS 'Salário'
FROM
hr.job_history AS j_h
INNER JOIN
hr.employees AS empl ON j_h.EMPLOYEE_ID = empl.EMPLOYEE_ID
WHERE
MONTH(j_h.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome Completo`, `Data de início`;
