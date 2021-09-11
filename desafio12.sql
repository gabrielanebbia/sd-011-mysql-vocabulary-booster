SELECT CONCAT(e1.First_Name, ' ', e1.Last_Name) AS 'Nome completo funcionário 1',
e1.SALARY AS 'Salário funcionário 1',
e1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(e2.First_Name, ' ', e2.Last_Name) AS 'Nome completo funcionário 2',
e2.SALARY AS 'Salário funcionário 2',
e2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM employees AS e1
INNER JOIN employees AS e2
ON e1.JOB_ID = e2.JOB_ID AND e1.EMPLOYEE_ID != e2.EMPLOYEE_ID
ORDER BY 1 ASC, 4 ASC;
