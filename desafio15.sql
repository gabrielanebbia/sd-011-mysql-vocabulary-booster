-- 15 - Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro
--  o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas
--   que possuem esse cargo


USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo varchar(45))
BEGIN
SELECT ROUND(AVG(EMP.SALARY),2) AS 'Média salarial'
FROM hr.employees AS EMP
WHERE EMP.JOB_ID = (
SELECT JOB.JOB_ID
FROM hr.jobs AS JOB
WHERE JOB.JOB_TITLE = cargo
);
END $$
DELIMITER ;



CALL buscar_media_por_cargo('Marketing Manager');