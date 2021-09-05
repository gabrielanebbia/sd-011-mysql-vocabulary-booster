SELECT CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME) AS 'Nome completo',
hj.JOB_TITLE AS 'Cargo',
hjhis.START_DATE AS 'Data de início do cargo',
hd.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS he
INNER JOIN hr.job_history AS hjhis
ON hjhis.employee_id = he.employee_id
INNER JOIN hr.jobs AS hj
ON hj.job_id = hjhis.job_id
INNER JOIN hr.departments AS hd
ON hd.department_id = hjhis.department_id
ORDER BY CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME) DESC, Cargo;
