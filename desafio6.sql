USE hr;
SELECT 
CONCAT(emp.FIRST_NAME , ' ' , emp.LAST_NAME) AS 'Nome completo',
 jb.JOB_TITLE AS  Cargo,
 jh.START_DATE AS  'Data de início do cargo',
 dp.DEPARTMENT_NAME AS  'Departamento'
FROM job_history AS jh 
INNER JOIN employees AS emp
ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN jobs AS jb
ON jh.JOB_ID = jb.JOB_ID
INNER JOIN departments AS dp
ON jh.DEPARTMENT_ID = dp.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
