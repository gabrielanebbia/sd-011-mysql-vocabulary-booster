SELECT 
CONCAT(emp.FIRST_NAME, + ' ', + emp.LAST_NAME) AS 'Nome completo funcionário 1',
emp.SALARY AS 'Salário funcionário 1',
emp.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(emp2.FIRST_NAME, + ' ', + emp2.LAST_NAME) AS 'Nome completo funcionário 2',
emp2.SALARY AS 'Salário funcionário 2',
emp2.PHONE_NUMBER AS 'Telefone funcionário 2'

FROM hr.employees AS emp, hr.employees AS emp2
WHERE emp.JOB_ID = emp2.JOB_ID
AND emp.EMPLOYEE_ID <> emp2.EMPLOYEE_ID

ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;

-- cool article: https://chartio.com/learn/sql-tips/single-double-quote-and-backticks-in-mysql-queries/#:~:text=Backticks%20are%20used%20in%20MySQL,tables%20from%20your%20MySQL%20source.&text=Using%20backticks%20we%20are%20signifying,the%20column%20and%20table%20names.
