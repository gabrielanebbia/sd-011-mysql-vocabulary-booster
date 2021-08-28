SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome Completo', j.JOB_TITLE 'Cargo', e.HIRE_DATE 'Data de início do cargo', d.DEPARTMENT_NAME 'Departamento'
FROM hr.employees e
INNER JOIN hr.jobs j
ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.departments d
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, j.JOB_TITLE;
