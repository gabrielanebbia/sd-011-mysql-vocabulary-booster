DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
select concat(t1.first_name, ' ', t1.last_name) as `Nome completo`,
t3.department_name as Departamento,
t4.job_title as Cargo
from hr.employees as t1
inner join hr.job_history as t2
on t1.employee_id = t2.employee_id
inner join hr.departments as t3
on t2.department_id = t3.DEPARTMENT_ID
inner join hr.jobs as t4
on t2.job_id = t4.job_id
where t1.email = email
order by Departamento, Cargo;
END $$

DELIMITER ;
