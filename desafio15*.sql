USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(e.salary), 2) AS 'Média Salarial'
  FROM hr.employees e
  INNER JOIN hr.jobs j
  WHERE j.job_title = cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');


-- tentei também por avg(max_salary - min_salary) mas também não foi

Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo
Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo.

Sua procedure deve retornar somente 01 coluna com o alias "Média salarial", que mostra a média salarial arredondada para duas casas decimais.

Use o banco hr como referência

Confirme a execução correta da procedure chamando-a e passando o nome de cargo igual a "Programmer":

CALL buscar_media_por_cargo('Programmer');

Chamando-a dessa forma, sua procedure deve retornar 5760.00 como média salarial para pessoas que ocupam o cargo "Programmer".