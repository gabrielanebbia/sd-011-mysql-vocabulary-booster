SELECT CONCAT(Emp.FIRST_NAME,' ', Emp.LAST_NAME) AS `Nome completo`, 
Job.JOB_TITLE AS Cargo,
history_table.START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS Departamento
FROM hr.employees AS Emp
INNER JOIN hr.jobs AS Job
ON Job.JOB_ID = Emp.JOB_ID
INNER JOIN hr.departments AS Depart
ON Depart.DEPARTMENT_ID = Emp.DEPARTMENT_ID
INNER JOIN hr.job_history AS history_table
ON history_table.EMPLOYEE_ID = Emp.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, Cargo ASC;
