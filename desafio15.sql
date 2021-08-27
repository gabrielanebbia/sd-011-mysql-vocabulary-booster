DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT round(avg(t1.salary), 2) as `Média salarial`
FROM hr.employees as t1
inner join hr.jobs as t2
on t1.job_id = t2.job_id
where t2.job_title = cargo
group by t1.job_id;
END $$

DELIMITER ;
