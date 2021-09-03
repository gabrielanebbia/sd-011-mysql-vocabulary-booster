SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início', emp.SALARY AS Salário FROM hr.job_history AS jh
INNER JOIN hr.employees AS emp ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) BETWEEN 1 AND 3 ORDER BY 'Nome Completo', jh.START_DATE;
