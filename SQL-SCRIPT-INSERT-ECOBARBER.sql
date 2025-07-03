insert into usuarios(`username(email)`, senha, tipo_usuario, data_cadastro, status_conta)
value("gabrielbarbeiro@gmail.com", "198357", "barbeiro", "02/03/2025", "ativo"),
("coletasrecife@gmail.com", "157169", "empresa", "06/12/2024", "ativo"),
("leosantana@gmail.com", "666666", "barbeiro", "23/12/2024", "inativo"),
("brasilsemprelimpo@gmail.com", "675035", "empresa", "28/09/2023", "ativo"),
("diegotesouras@gmail.com", "840528", "barbeiro", "13/07/2025", "ativo");

insert into barbearias(id_barbearias, nome_fantasia, num_profissionais, cnpj_cpf, `Usuarios_username(email)`)
value("1", "Gbarbearia", "20", "123.456.789-10", "gabrielbarbeiro@gmail.com"),
("2", "Imperio da barba", "16", "987.654.321-99", "leosantana@gmail.com"),
("3", "Diego tesouras", "25", "452.124.695-75", "diegotesouras@gmail.com");

insert into endereco(Barbearias_id_barbearias, UF, cidade, bairro, rua, numero, comp, cep)
value("1", "SP", "Sao_Paulo", "Vila Mariana", "Rua Domingos de Morais", "1457", "ao lado do Mercado Jorge", "04010-100"),
("2", "RJ", "Niterói", "Icaraí", "Rua Lopes Trovão", "123", "perto do morro alemao", "24220-071"),
("3", "PE", "Recife", "Encruzilhada","Rua do Cupim", "45", "ao lado da PagueMenos", "52041-230");

insert into residuos(id_residuo, categoria_residuo, Nome, Descricao, tipo)
value("4", "reciclavel", "cabelo", "longo, volumoso e cacheado", "organico"),
("5", "reciclavel", "lamina", "pequena e inferrujada", "metal"),
("6", "reciclavel", "embalagem", "gel de cabelo", "plastico"),
("7", "nao_reciclavel", "papel toalha", "sujo", "papel");

insert into descartar(Residuos_id_residuo, Barbearias_id_barbearias, id_descarte, `data`, Quantidade)
value("6", "3", "8", "2025-03-27", "2"),
("4", "1", "9", "2025-07-16", "3"),
("5", "1", "10", "2025-07-16", "6"),
("7", "3", "11", "2025-04-09", "8");

insert into empresas_parceiras(cpf_cnpj, id_parceiro, status_parceria, tipo_servico, razao_social, cidade_atendimento, telefone, `Usuarios_username(email)`)
value("456.154.669-88","12", "1", "coleta seletiva", "Brasil sempre impo", "Sao Paulo", 11948977564, "brasilsemprelimpo@gmail.com"),
("157.654.981-22","13", "1", "coleta seletiva", "Coletas Recife", "Recife", 81965156410, "coletasrecife@gmail.com");

insert into solitacoes_coleta(idSolitacoes, data_solicitacao, data_prevista, data_coleta, `status`, 
HistóricoDescarte_idHistóricoDescarte, Descartar_id_descarte, Descartar_Residuos_id_residuo, Descartar_Barbearias_id_barbearias, observacoes)
value("14", "2025-04-07", "2025-04-8", "2025-04-09", "coletado", "18", "11", "7", "3", "pedido solicitado e ja coletado."),
("15", "2025-04-15", "2025-04-16", "2025-04-16", "coletado", "19", "9", "4", "1", "pedido solicitado e ja coletado."),
("16", "2025-04-15", "2025-04-16", "2025-04-16", "coletado", "20", "10", "5", "1", "pedido solicitado e ja coletado."),
("17", "2025-04-25", "2025-04-27", "2025-04-27", "aguardando", "21", "8", "6", "3", "pedido solicitado e no aguardo da coleta.");

insert into solicitar(Barbearias_id_barbearias, Empresas_parceiras_cpf_cnpj, Solitacoes_coleta_idSolitacoes, nota_avaliacao)
value("3", "456.154.669-88", "17", "5");

insert into cursos_conteudo(id_conteudo, titulo, tipo, categoria, url_arquivo, disponível_desde)
value("22", "descarte consciente", "conteudo educativo", "iniciante", "https://tinyurl.com/34da4x7t", "2023-06-05"),
("23", "biossegurança", "conteudo educativo", "intermediario", "https://tinyurl.com/34da4x7t", "2023-06-05");

insert into gamificacao(id_pontuacao, atividades, pontos, `Usuarios_username(email)`)
value("24", "descarte de cabelos e laminas", "354", "gabrielbarbeiro@gmail.com"),
("25", "descarte de embalagens e papeis", "327", "diegotesouras@gmail.com");

insert into barbearias_has_cursos_conteudo(Barbearias_id_barbearias, Cursos_conteudo_id_conteudo)
value("1","22"),
("1","23"),
("2","22"),
("2","23"),
("3","22"),
("3","23");
