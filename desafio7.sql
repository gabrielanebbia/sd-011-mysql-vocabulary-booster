SELECT UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
E.HIRE_DATE AS `Data de início do cargo`,
E.SALARY AS `Salário`
FROM employees AS E
INNER JOIN jobs AS J
GROUP BY `Nome completo`
ORDER BY `Nome completo`, `Data de início do cargo`;
