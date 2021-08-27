SELECT 
UCASE(CONCAT(Emp.FIRST_NAME, ' ', Emp.LAST_NAME)) AS `Nome completo`,
history_table.START_DATE AS 'Data de início',
Emp.SALARY AS Salario
FROM 
hr.employees AS Emp
INNER JOIN 
hr.job_history AS history_table ON history_table.EMPLOYEE_ID = Emp.EMPLOYEE_ID
WHERE 
MONTH(history_table.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC, `Data de início` ASC;
