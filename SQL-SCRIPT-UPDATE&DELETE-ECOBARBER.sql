UPDATE usuarios 
SET status_conta = "ativo"
WHERE `username(email)` = "leosantana@gmail.com";

update descartar
set Quantidade = 9
where id_descarte = 10;

UPDATE empresas_parceiras 
SET status_parceria = '0' 
WHERE id_parceiro = 12;

UPDATE endereco 
SET rua = 'Avenida Paulista', numero = '1000', comp = 'próximo ao metrô Trianon' 
WHERE Barbearias_id_barbearias = 1;

update gamificacao
set pontos = 500
where id_pontuacao = 25;

update cursos_conteudo
set tipo = "video"
where id_conteudo = 22;

delete from barbearias
where id_barbearias = 2;

delete from residuos
where id_residuo = 7;

delete from empresas_parceiras 
where id_parceiro = 13;

delete from descartar
where Residuos_id_residuo = 5;

delete from gamificacao
where id_pontuacao = 24;
