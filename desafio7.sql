SELECT UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome Completo', 
e.HIRE_DATE AS 'Data de início',
MONTH(e.HIRE_DATE),
e.SALARY AS 'Salário'
FROM employees AS e
WHERE (
	MONTH(e.HIRE_DATE) = 1 OR MONTH(e.HIRE_DATE) = 2 OR MONTH(e.HIRE_DATE) = 3
)
ORDER BY 1, 2;
