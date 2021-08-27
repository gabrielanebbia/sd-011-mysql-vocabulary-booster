SELECT CONCAT(a.first_name, ' ', a.last_name) AS `Nome completo`, 
b.JOB_TITLE AS Cargo, 
c.START_DATE AS `Data de início do cargo`, 
d.DEPARTMENT_NAME AS Departamento
FROM employees AS a
INNER JOIN job_history AS c
ON a.EMPLOYEE_ID = c.EMPLOYEE_ID
INNER JOIN jobs AS b
ON c.JOB_ID = b.JOB_ID
INNER JOIN departments AS d
ON c.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(a.first_name, ' ', a.last_name) DESC, Cargo;
