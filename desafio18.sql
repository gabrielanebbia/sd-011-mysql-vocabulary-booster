-- 18 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas, 
-- mostrando as datas de início e de saída, assim como os anos que ela ficou nesse cargo
SELECT CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) AS `Nome completo`,
-- SHOW DATE IN FORMAT YEAR-MONTH-DAY
DATE_FORMAT(JH.START_DATE, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(JH.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE) / 365,2) AS `Anos trabalhados`
FROM hr.employees AS EMP
INNER JOIN hr.job_history AS JH
ON EMP.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Anos Trabalhados` ASC;
