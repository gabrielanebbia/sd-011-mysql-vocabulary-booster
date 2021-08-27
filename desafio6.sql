SELECT
CONCAT(t1.FIRST_NAME, " ", t1.LAST_NAME) AS "Nome Completo",
t2.JOB_TITLE AS "Cargo",
t1.HIRE_DATE AS "Data de início do cargo",
t3.DEPARTMENT_NAME AS "Departamento"
FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
INNER JOIN hr.departments AS t3
ON t1.DEPARTMENT_ID = t3.DEPARTMENT_ID
ORDER BY
CONCAT(t1.FIRST_NAME, " ", t1.LAST_NAME) DESC,
t2.JOB_ID;
