SELECT country_name as 'País', IF (region_id = 1, 'incluído', 'não incluído') as 'Status Inclusão' FROM hr.countries
ORDER BY country_name ASC;

-- SELECT * FROM hr.countries;
-- SELECT * FROM hr.departments;
-- SELECT * FROM hr.employees;
-- SELECT * FROM hr.job_history;
-- SELECT * FROM hr.jobs;
-- SELECT * FROM hr.locations;
-- SELECT * FROM hr.regions;
