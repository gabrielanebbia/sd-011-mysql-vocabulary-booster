  select 
  UCASE(concat(FIRST_NAME, ' ', LAST_NAME)) AS "Nome completo",
  START_DATE AS "Data de início",
  SALARY AS 'Salário'
    from employees AS e INNER JOIN job_history AS j
    ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
    WHERE MONTH(j.START_DATE) IN (1,2,3)
    order by concat(FIRST_NAME, ' ', LAST_NAME), START_DATE ASC;
