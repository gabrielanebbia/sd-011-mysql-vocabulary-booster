DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(60))
BEGIN
select ROUND(AVG(employees.salary), 2) as 'Média salarial'
from hr.employees as employees
INNER JOIN hr.jobs as jobs
on employees.JOB_ID = jobs.JOB_ID
where jobs.job_TITLE = job;
END $$
DELIMITER;
