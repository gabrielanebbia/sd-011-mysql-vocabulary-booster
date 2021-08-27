 
SELECT CONCAT(EMP1.FIRST_NAME, ' ', EMP1.LAST_NAME) `Nome completo funcionário 1`,
EMP1.SALARY `Salário funcionário 1`, EMP1.PHONE_NUMBER `Telefone funcionário 1`,
CONCAT(EMP2.FIRST_NAME, ' ', EMP2.LAST_NAME) `Nome completo funcionário 2`,
EMP2.SALARY `Salário funcionário 2`, EMP2.PHONE_NUMBER `Telefone funcionário 2`
FROM employees EMP1, employees EMP2
WHERE EXISTS (
SELECT JOB_TITLE FROM jobs JO
WHERE JO.JOB_ID = EMP1.JOB_ID AND JO.JOB_ID = EMP2.JOB_ID
AND EMP1.EMPLOYEE_ID <> EMP2.EMPLOYEE_ID)  
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
