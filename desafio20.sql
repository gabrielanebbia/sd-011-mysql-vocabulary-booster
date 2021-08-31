USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(email VARCHAR(30))
BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ',E.LAST_NAME) AS 'Nome completo',
(
SELECT DEPARTMENT_NAME
FROM hr.departments D
WHERE D.DEPARTMENT_ID = JB.DEPARTMENT_ID
) AS 'Departamento',
(
SELECT JOB_TITLE
FROM hr.jobs J
WHERE J.JOB_ID = JB.JOB_ID
) AS 'Cargo'
FROM hr.employees E
RIGHT JOIN hr.job_history JB
ON E.EMPLOYEE_ID = JB.EMPLOYEE_ID
WHERE E.EMAIL LIKE CONCAT(email, '%')
ORDER BY Departamento, Cargo;
END $$

DELIMITER ;
