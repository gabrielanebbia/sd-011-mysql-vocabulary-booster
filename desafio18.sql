
SELECT CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) `Nome completo`,
DATE_FORMAT(JH.START_DATE, '%d/%m/%Y') `Data de início`,
DATE_FORMAT(JH.END_DATE, '%d/%m/%Y') `Data de rescisão`,
ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE) / 365, 2) `Anos trabalhados`
FROM employees EMP
INNER JOIN job_history JH
ON EMP.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
