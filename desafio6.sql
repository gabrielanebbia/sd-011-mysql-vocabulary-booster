SELECT
		CONCAT(e.first_name,
		' ',
		e.last_name) AS `Nome completo`,
		j.job_title AS `Cargo`,
		h.start_date AS `Data de início do cargo`,
		d.department_name AS `Departamento`
FROM
		hr.employees AS e
INNER JOIN
		hr.job_history AS h
				ON h.employee_id = e.employee_id
INNER JOIN
		hr.jobs AS j
				ON j.job_id = h.job_id
INNER JOIN
		hr.departments AS d
				ON d.department_id = h.department_id
ORDER BY
		`Nome completo` DESC,
		`Cargo`;
