SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
J.JOB_TITLE AS Cargo,
E.HIRE_DATE AS `Data de início do cargo`,
D.DEPARTMENT_NAME AS Departamento
FROM employees AS E
INNER JOIN job_history AS JH
  ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN jobs AS J
  ON J.JOB_ID = JH.JOB_ID
INNER JOIN departments AS D
  ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Departamento;
