SELECT CONCAT_WS (' ', E.FIRST_NAME, E.LAST_NAME) AS 'Nome Completo',
J.JOB_TITLE AS Cargo,
JH.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS E
INNER JOIN hr.jobs AS J ON E.JOB_ID = J.JOB_ID
INNER JOIN hr.job_history AS JH ON J.JOB_ID = JH.JOB_ID
INNER JOIN hr.departments AS D ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo;
