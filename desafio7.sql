SELECT UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome completo',
hire_date AS 'Data de início',
salary AS 'Salário'
FROM hr.employees
ORDER BY `Nome completo`, hire_date;
