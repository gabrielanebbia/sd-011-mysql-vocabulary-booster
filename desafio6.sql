SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
J.JOB_TITLE AS Cargo,
E.HIRE_DATE AS `Data de início do cargo`,
D.DEPARTMENT_NAME AS Departamento
FROM employees AS E
INNER JOIN jobs AS J
INNER JOIN departments AS D
ORDER BY `Nome completo` DESC, Departamento;
