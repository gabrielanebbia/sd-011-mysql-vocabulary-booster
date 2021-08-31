DELIMITER $$
CREATE PROCEDURE
exibir_historico_completo_por_funcionario(
IN input_email VARCHAR(100))
BEGIN
SELECT
CONCAT(t2.FIRST_NAME, " ", t2.LAST_NAME) AS "Nome completo",
t3.DEPARTMENT_NAME AS "Departamento",
t4.JOB_TITLE AS "Cargo"
FROM
hr.job_history AS t1
INNER JOIN
hr.employees as t2
ON t2.EMPLOYEE_ID = t1.EMPLOYEE_ID
INNER JOIN
hr.departments AS t3
ON t3.DEPARTMENT_ID = t1.DEPARTMENT_ID
INNER JOIN
hr.jobs AS t4
ON t4.JOB_ID = t1.JOB_ID
WHERE
t2.EMAIL = input_email
ORDER BY
`Nome completo`,
`Cargo`;
END $$
DELIMITER;
