SELECT * FROM hr.employees;
SELECT * FROM hr.job_history;
SELECT * FROM employees;

SELECT UCASE(CONCAT(e.FRIST_NAME,' ',e.LAST_NAME)) AS 'Nome Completo',
	jh.START_DATE AS "Data de início",
	e.SALARY AS "Salário"
FROM
	hr.job_history AS jh
    INNER JOIN 
    hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
    INNER JOIN
WHERE 
	MONTH(jh.start_date) <= 3
ORDER BY 1;

