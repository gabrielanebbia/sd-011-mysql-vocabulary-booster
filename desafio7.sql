SELECT UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo', 
h.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM employees AS e
INNER JOIN job_history AS h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE (
    MONTH(h.START_DATE) = 1 OR MONTH(h.START_DATE) = 2 OR MONTH(h.START_DATE) = 3
)
ORDER BY 1, 2;
