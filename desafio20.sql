USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN emailInput VARCHAR(30))
BEGIN
SELECT 
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
  D.DEPARTMENT_NAME 'Departamento',
  J.JOB_TITLE 'Cargo'
FROM
  hr.employees E
INNER JOIN 
  hr.job_history JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
INNER JOIN 
  hr.departments D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
INNER JOIN 
  hr.jobs J ON J.JOB_ID = JH.JOB_ID
    WHERE E.EMAIL = emailInput
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
