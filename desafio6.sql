      select 
  concat(FIRST_NAME, ' ', LAST_NAME) AS "Nome completo",
  JOB_TITLE AS 'Cargo',
  START_DATE AS "Data de início",
  DEPARTMENT_NAME AS 'Departamento'
    FROM job_history AS jh
    INNER JOIN jobs AS j
    ON j.JOB_ID = jh.JOB_ID
    INNER JOIN departments AS d
    ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
    INNER JOIN  employees AS e
    ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID 
    ORDER BY concat(FIRST_NAME, ' ', LAST_NAME) DESC, JOB_TITLE;
