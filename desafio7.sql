SELECT
		UPPER(CONCAT(e.first_name,
		' ',
		e.last_name)) AS `Nome completo`,
		h.start_date AS `Data de início`,
		e.salary AS `Salário`
FROM
		hr.employees AS e
INNER JOIN
		hr.job_history AS h
				ON h.employee_id = e.employee_id
				AND MONTH(h.start_date) IN (
						1,
				2,
				3)
		ORDER BY
				`Nome completo`,
				`Data de início`;
