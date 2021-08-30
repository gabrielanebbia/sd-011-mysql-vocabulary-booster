USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(
  IN employee_email VARCHAR(25)
)
BEGIN
  SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    d.DEPARTMENT_NAME AS 'Departamento',
    j.JOB_TITLE AS 'Cargo'
  FROM
    job_history AS jh
  INNER JOIN
    employees as e
    ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  INNER JOIN
    departments AS d
    ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
  INNER JOIN
    jobs AS j
    ON j.JOB_ID = jh.JOB_ID
  WHERE
    e.EMAIL = employee_email
  ORDER BY
    2 ASC,
    3 ASC;
END $$

DELIMITER ;
