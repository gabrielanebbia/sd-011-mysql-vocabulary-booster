SELECT UCASE(CONCAT(a.first_name, ' ', a.last_name)) AS `Nome completo`, 
b.START_DATE AS `Data de início do cargo`, 
SALARY AS 'Salário'
FROM employees AS a
INNER JOIN job_history AS b
ON a.EMPLOYEE_ID = b.EMPLOYEE_ID
ORDER BY CONCAT(a.first_name, ' ', a.last_name), START_DATE;
