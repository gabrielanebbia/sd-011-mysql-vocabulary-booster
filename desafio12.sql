SELECT CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) AS "Nome completo funcionário 1",
e.SALARY AS "Salário funcionário 1",
e.PHONE_NUMBER AS "Telefone funcionário 1",
CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) AS "Nome completo funcionário 2",
emp.SALARY AS "Salário funcionário 2",
emp.PHONE_NUMBER AS "Telefone funcionário 2"
FROM hr.employees e
INNER JOIN hr.employees emp 
ON emp.JOB_ID = e.JOB_ID AND emp.EMPLOYEE_ID <> e.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) ASC, 
CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) ASC;
