WITH cte AS
(
    SELECT j.JOB_TITLE AS col1, AVG(e.SALARY) AS col2
    FROM jobs AS j
    LEFT JOIN employees AS e
    ON j.JOB_ID = e.JOB_ID
    GROUP BY j.JOB_TITLE
    ORDER BY col2, col1
)
SELECT col1, col2 AS 'Media Salarial',
CASE
        WHEN (col2 > 2000 AND col2 < 5800) THEN 'Júnior'
        WHEN (col2 > 5801 AND col2 < 7500) THEN 'Plano'
        WHEN (col2 > 7501 AND col2 < 10500) THEN 'Sênior'
        WHEN col2 > 10500 THEN 'CEO'
        END AS 'Senioridade' 
FROM cte;
