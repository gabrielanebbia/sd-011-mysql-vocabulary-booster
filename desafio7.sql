select UCASE(concat(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
START_DATE AS 'Data de início',
SALARY AS 'Salário'
from hr.job_history AS jh
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE substring(START_DATE, 6, 2) IN ('01', '02', '03')
ORDER BY `Nome completo`, HIRE_DATE;
