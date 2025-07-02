insert into usuarios(`username(email)`, senha, tipo_usuario, data_cadastro, status_conta)
value("gabrielbarbeiro@gmail.com", "198357", "barbeiro", "02/03/2025", "ativo"),
("coletasrecife@gmail.com", "157169", "empresa", "06/12/2024", "ativo"),
("leosantana@gmail.com", "666666", "barbeiro", "23/12/2024", "inativo"),
("brasilsemprelimpo@gmail.com", "675035", "empresa", "28/09/2023", "ativo"),
("diegotesouras@gmail.com", "840528", "barbeiro", "13/07/2025", "ativo");

insert into barbearias(id_barbearias, nome_fantasia, num_profissionais, cnpj_cpf, `Usuarios_username(email)`)
value("1", "Gbarbearia", "20", "123.456.789-10", "gabrielbarbeiro@gmail.com"),
("2", "Imperio_da_barba", "16", "987.654.321-99", "leosantana@gmail.com"),
("3", "Diego_tesouras", "25", "452.124.695-75", "diegotesouras@gmail.com");

insert into endereco(Barbearias_id_barbearias, UF, cidade, bairro, rua, numero, comp, cep)
value("1", "SP", "Sao_Paulo", "Vila Mariana", "Rua_Domingos_de_Morais", "1457", "ao_lado_do_Mercado_Jorge", "04010-100"),
("2", "RJ", "Niterói", "Icaraí", "Rua_Lopes_Trovão", "123", "perto_do_morro_alemao", "24220-071"),
("3", "RS", "Porto Alegre", "Moinhos de Vento", "Rua Padre Chagas", "555", "2_andar", "90570-080");

insert into residuos(id_residuo, categoria_residuo, Nome, Descricao, tipo)
value("4", "reciclavel", "cabelo", "longo,volumoso,cacheado", "organico"),
("5", "reciclavel", "lamina", "pequena,inferrujada", "metal"),
("6", "reciclavel", "embalagem", "gel_de_cabelo", "plastico"),
("7", "nao_reciclavel", "papel_toalha", "sujo", "papel");

insert into descartar(Residuos_id_residuo, Barbearias_id_barbearias, id_descarte, `data`, Quantidade)
value("6", "2", "8", "2025-07-16", "2"),
("4", "2", "9", "2025-07-16", "3"),
("5", "1", "10", "2025-03-27", "6"),
("7", "3", "11", "2025-08-09", "8");

insert into empresas_parceiras(cpf_cnpj, id_parceiro, status_parceria, tipo_servico, razao_social, cidade_atendimento, telefone, `Usuarios_username(email)`)
value("456.154.669-88","12", "1", "coleta_seletiva", "Coletas_Recife", "Recife", 81948977564, "coletasrecife@gmail.com"),
("157.654.981-22","13", "1", "coleta_seletiva", "Brasil_sempre_limpo", "Natal", 81965156410, "brasilsemprelimpo@gmail.com");
