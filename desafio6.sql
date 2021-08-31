SELECT
	CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME) AS 'Nome completo',
	hj.JOB_TITLE AS Cargo,
    hjhis.START_DATE AS 'Data de início do cargo',
    hd.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS he
INNER JOIN hr.job_history AS hjhis
ON hjhis.EMPLOYEE_ID = he.EMPLOYEE_ID
INNER JOIN hr.jobs AS hj
ON hj.JOB_ID = hjhis.JOB_ID
INNER JOIN hr.departments AS hd
ON hd.DEPARTMENT_ID = hjhis.DEPARTMENT_ID
ORDER BY CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME) DESC, Cargo;