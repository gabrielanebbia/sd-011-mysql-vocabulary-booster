SELECT CONCAT(em.FIRST_NAME, ' ' , em.LAST_NAME) AS 'Nome completo',
jo.JOB_TITLE AS 'Cargo',
hi.START_DATE AS 'Data de início do cargo',
de.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees em
INNER JOIN hr.jobs jo 
INNER JOIN hr.departments de 
INNER JOIN hr.job_history hi
ON em.EMPLOYEE_ID = hi.EMPLOYEE_ID 
AND jo.JOB_ID = hi.JOB_ID
AND de.DEPARTMENT_ID = hi.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
