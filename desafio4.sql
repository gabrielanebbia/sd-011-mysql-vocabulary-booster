SELECT job.JOB_TITLE AS Cargo, 
ROUND(AVG(emp.SALARY),2) AS `Média salarial`, 
CASE 
WHEN AVG(emp.SALARY) >= 2000 AND  AVG(emp.SALARY) <= 5800 THEN 'Júnior'
WHEN AVG(emp.SALARY) >= 5801 AND  AVG(emp.SALARY) <= 7500 THEN 'Pleno'
WHEN AVG(emp.SALARY) >= 7501 AND  AVG(emp.SALARY) <= 10500  THEN 'Sênior'
ELSE 'CEO'
END AS Senioridade
FROM hr.jobs AS job
LEFT JOIN  employees AS emp
ON job.JOB_ID = emp.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial`ASC, Cargo ASC;
