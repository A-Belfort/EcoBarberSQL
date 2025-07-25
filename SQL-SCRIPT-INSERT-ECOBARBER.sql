insert into usuarios(`username(email)`, senha, tipo_usuario, data_cadastro, status_conta)
values
("barbeariaimperial@gmail.com", "123456", "barbeiro", "01/01/2025", "ativo"),
("barbeariacentral@gmail.com", "234567", "barbeiro", "02/01/2025", "ativo"),
("barbeariagold@gmail.com", "345678", "barbeiro", "03/01/2025", "ativo"),
("barbeariabarbudo@gmail.com", "456789", "barbeiro", "04/01/2025", "ativo"),
("barbeariasharp@gmail.com", "567890", "barbeiro", "05/01/2025", "ativo"),
("barbeariastyle@gmail.com", "678901", "barbeiro", "06/01/2025", "ativo"),
("barbeariapremium@gmail.com", "789012", "barbeiro", "07/01/2025", "ativo"),
("barbeariaurbana@gmail.com", "890123", "barbeiro", "08/01/2025", "ativo"),
("barbeariaelite@gmail.com", "901234", "barbeiro", "09/01/2025", "ativo"),
("barbeariaexpress@gmail.com", "012345", "barbeiro", "10/01/2025", "ativo"),
("barbeariafina@gmail.com", "112358", "barbeiro", "11/01/2025", "ativo"),
("barbeariamoderna@gmail.com", "223344", "barbeiro", "12/01/2025", "ativo"),
("barbeariavip@gmail.com", "334455", "barbeiro", "13/01/2025", "ativo"),
("barbeariapopular@gmail.com", "445566", "barbeiro", "14/01/2025", "ativo"),
("barbeariaarte@gmail.com", "556677", "barbeiro", "15/01/2025", "ativo"),
("barbeariabarbearia@gmail.com", "667788", "barbeiro", "16/01/2025", "ativo"),
("barbeariaglamour@gmail.com", "778899", "barbeiro", "17/01/2025", "ativo"),
("barbeariaestilo@gmail.com", "889900", "barbeiro", "18/01/2025", "ativo"),
("barbeariazen@gmail.com", "990011", "barbeiro", "19/01/2025", "ativo"),
("barbeariaurbano@gmail.com", "101112", "barbeiro", "20/01/2025", "ativo"),
("coletalimpabrasil@gmail.com", "112233", "empresa", "21/01/2025", "ativo"),
("coletaverde@gmail.com", "223344", "empresa", "22/01/2025", "ativo"),
("coletarecicla@gmail.com", "334455", "empresa", "23/01/2025", "ativo"),
("coletaseletiva@gmail.com", "445566", "empresa", "24/01/2025", "ativo"),
("coletalixoecologico@gmail.com", "556677", "empresa", "25/01/2025", "ativo"),
("coletalimporecife@gmail.com", "667788", "empresa", "26/01/2025", "ativo"),
("coletatotal@gmail.com", "778899", "empresa", "27/01/2025", "ativo"),
("coletabrasil@gmail.com", "889900", "empresa", "28/01/2025", "ativo"),
("coletasustentavel@gmail.com", "990011", "empresa", "29/01/2025", "ativo"),
("coletalixo@gmail.com", "101112", "empresa", "30/01/2025", "ativo"),
("coletareciclagem@gmail.com", "121314", "empresa", "31/01/2025", "ativo"),
("coletalimpaurbana@gmail.com", "131415", "empresa", "01/02/2025", "ativo"),
("coletalimpacidade@gmail.com", "141516", "empresa", "02/02/2025", "ativo"),
("coletalimpasaopaulo@gmail.com", "151617", "empresa", "03/02/2025", "ativo"),
("coletalimpaniteroi@gmail.com", "161718", "empresa", "04/02/2025", "ativo"),
("coletalimpapernambuco@gmail.com", "171819", "empresa", "05/02/2025", "ativo"),
("coletalimpanorte@gmail.com", "181920", "empresa", "06/02/2025", "ativo"),
("coletalimpasul@gmail.com", "192021", "empresa", "07/02/2025", "ativo"),
("coletalimpacentro@gmail.com", "202122", "empresa", "08/02/2025", "ativo"),
("coletalimpabrasilcentral@gmail.com", "212223", "empresa", "09/02/2025", "ativo");

insert into barbearias(nome_fantasia, num_profissionais, cnpj_cpf, `Usuarios_username(email)`)
values
("Barbearia Imperial", 10, "123.456.789-01", "barbeariaimperial@gmail.com"),
("Barbearia Central", 8, "234.567.890-12", "barbeariacentral@gmail.com"),
("Barbearia Gold", 12, "345.678.901-23", "barbeariagold@gmail.com"),
("Barbearia Barbudo", 7, "456.789.012-34", "barbeariabarbudo@gmail.com"),
("Barbearia Sharp", 9, "567.890.123-45", "barbeariasharp@gmail.com"),
("Barbearia Style", 11, "678.901.234-56", "barbeariastyle@gmail.com"),
("Barbearia Premium", 13, "789.012.345-67", "barbeariapremium@gmail.com"),
("Barbearia Urbana", 6, "890.123.456-78", "barbeariaurbana@gmail.com"),
("Barbearia Elite", 14, "901.234.567-89", "barbeariaelite@gmail.com"),
("Barbearia Express", 5, "012.345.678-90", "barbeariaexpress@gmail.com"),
("Barbearia Fina", 8, "112.358.132-13", "barbeariafina@gmail.com"),
("Barbearia Moderna", 10, "223.344.556-77", "barbeariamoderna@gmail.com"),
("Barbearia VIP", 9, "334.455.667-88", "barbeariavip@gmail.com"),
("Barbearia Popular", 7, "445.566.778-99", "barbeariapopular@gmail.com"),
("Barbearia Arte", 6, "556.677.889-00", "barbeariaarte@gmail.com"),
("Barbearia Barbearia", 8, "667.788.990-11", "barbeariabarbearia@gmail.com"),
("Barbearia Glamour", 12, "778.899.001-22", "barbeariaglamour@gmail.com"),
("Barbearia Estilo", 11, "889.900.112-33", "barbeariaestilo@gmail.com"),
("Barbearia Zen", 5, "990.011.223-44", "barbeariazen@gmail.com"),
("Barbearia Urbano", 9, "101.112.334-55", "barbeariaurbano@gmail.com");

insert into endereco(Barbearias_id_barbearias, UF, cidade, bairro, rua, numero, comp, cep)
values
("1", "SP", "Sao_Paulo", "Vila Mariana", "Rua Domingos de Morais", "1457", "ao lado do Mercado Jorge", "04010-100"),
("2", "RJ", "Niterói", "Icaraí", "Rua Lopes Trovão", "123", "perto do morro alemão", "24220-071"),
("3", "PE", "Recife", "Encruzilhada", "Rua do Cupim", "45", "ao lado da PagueMenos", "52041-230"),
("4", "MG", "Belo_Horizonte", "Savassi", "Rua Pernambuco", "200", "próximo ao Shopping", "30130-151"),
("5", "RS", "Porto_Alegre", "Moinhos de Vento", "Rua Padre Chagas", "350", "em frente ao parque", "90570-080"),
("6", "BA", "Salvador", "Barra", "Avenida Oceânica", "1001", "próximo ao Farol", "40140-130"),
("7", "PR", "Curitiba", "Batel", "Rua Bispo Dom José", "500", "ao lado do shopping", "80440-080"),
("8", "SC", "Florianópolis", "Centro", "Rua Felipe Schmidt", "800", "próximo ao terminal", "88010-001"),
("9", "GO", "Goiânia", "Setor Bueno", "Avenida T-63", "1200", "em frente ao parque", "74230-120"),
("10", "DF", "Brasília", "Asa Sul", "SQS 308", "111", "próximo à igreja", "70355-010"),
("11", "CE", "Fortaleza", "Meireles", "Avenida Beira Mar", "2500", "em frente à feirinha", "60165-121"),
("12", "PA", "Belém", "Nazaré", "Avenida Nazaré", "900", "próximo à Basílica", "66035-170"),
("13", "AM", "Manaus", "Centro", "Rua Eduardo Ribeiro", "400", "próximo ao Teatro Amazonas", "69010-001"),
("14", "ES", "Vitória", "Praia do Canto", "Rua Aleixo Neto", "1500", "próximo ao shopping", "29055-130"),
("15", "PB", "João_Pessoa", "Tambaú", "Avenida Almirante Tamandaré", "600", "próximo ao mercado", "58039-010"),
("16", "PE", "Olinda", "Bairro Novo", "Avenida Getúlio Vargas", "120", "próximo ao colégio", "53030-010"),
("17", "AL", "Maceió", "Ponta Verde", "Rua Engenheiro Mário de Gusmão", "700", "próximo à praia", "57035-000"),
("18", "RN", "Natal", "Ponta Negra", "Avenida Engenheiro Roberto Freire", "3000", "próximo ao Morro do Careca", "59090-000"),
("19", "MT", "Cuiabá", "Centro", "Rua Barão de Melgaço", "250", "próximo à praça", "78005-100"),
("20", "MS", "Campo_Grande", "Centro", "Rua 14 de Julho", "1500", "próximo ao mercado municipal", "79002-350");

insert into residuos(categoria_residuo, Nome, Descricao, tipo)
values
("reciclavel", "cabelo", "curto, liso e seco", "organico"),
("reciclavel", "cabelo", "médio, tingido e oleoso", "organico"),
("reciclavel", "cabelo", "longo, volumoso e cacheado", "organico"),
("reciclavel", "lamina", "pequena e enferrujada", "metal"),
("reciclavel", "lamina", "descartável, sem corte", "metal"),
("reciclavel", "embalagem", "gel de cabelo", "plastico"),
("reciclavel", "embalagem", "shampoo vazia", "plastico"),
("reciclavel", "embalagem", "condicionador vazia", "plastico"),
("reciclavel", "pente quebrado", "plástico preto", "plastico"),
("reciclavel", "toalha de papel", "limpa, usada para secar mãos", "papel"),
("nao_reciclavel", "papel toalha", "sujo de tinta", "papel"),
("nao_reciclavel", "luva descartável", "vinil, usada", "plastico"),
("nao_reciclavel", "máscara descartável", "usada, azul", "tecido"),
("reciclavel", "frasco de álcool", "plástico transparente", "plastico"),
("reciclavel", "caixa de lâmina", "papelão", "papel"),
("reciclavel", "saco de lixo", "plástico preto", "plastico"),
("nao_reciclavel", "cabelo com química", "resíduo de alisamento", "organico"),
("reciclavel", "frasco de creme", "plástico branco", "plastico"),
("reciclavel", "escova de cabelo", "plástico e metal", "plastico"),
("nao_reciclavel", "pedaço de luva rasgada", "vinil, contaminada", "plastico");

insert into descartar(Residuos_id_residuo, Barbearias_id_barbearias, `data`, Quantidade)
values
("1", "2",  "2025-01-15", "5"),
("2", "4",  "2025-02-10", "3"),
("3", "5", "2025-03-05", "7"),
("4", "6", "2025-04-12", "2"),
("5", "7", "2025-05-18", "4"),
("6", "8","2025-06-22", "6"),
("7", "9", "2025-07-30", "1"),
("8", "10","2025-08-14", "3"),
("9", "11","2025-09-09", "2"),
("10", "12", "2025-10-03", "5"),
("11", "13",  "2025-11-11", "4"),
("12", "14",  "2025-12-19", "3"),
("13", "15",  "2025-01-25", "2"),
("14", "16",  "2025-02-28", "6"),
("15", "17",  "2025-03-17", "1"),
("16", "18",  "2025-04-21", "5"),
("17", "19",  "2025-05-29", "2"),
("18", "20",  "2025-06-13", "4"),
("19", "1",  "2025-07-07", "3"),
("20", "2",  "2025-08-23", "2");

insert into empresas_parceiras(cpf_cnpj, status_parceria, tipo_servico, razao_social, cidade_atendimento, telefone, `Usuarios_username(email)`)
values
("123.456.789-00", "1", "coleta seletiva", "Limpa Brasil", "São Paulo", 11999990001, "coletalimpabrasil@gmail.com"),
("234.567.890-11", "1", "coleta seletiva", "Coleta Verde", "Rio de Janeiro", 21999990002, "coletaverde@gmail.com"),
("345.678.901-22", "1", "coleta seletiva", "Recicla Fácil", "Recife", 81999990003, "coletarecicla@gmail.com"),
("456.789.012-33", "1", "coleta seletiva", "Seletiva Brasil", "Belo Horizonte", 31999990004, "coletaseletiva@gmail.com"),
("567.890.123-44", "1", "coleta seletiva", "Lixo Ecológico", "Porto Alegre", 51999990005, "coletalixoecologico@gmail.com"),
("678.901.234-55", "1", "coleta seletiva", "Limpo Recife", "Recife", 81999990006, "coletalimporecife@gmail.com"),
("789.012.345-66", "1", "coleta seletiva", "Total Coleta", "Curitiba", 41999990007, "coletatotal@gmail.com"),
("890.123.456-77","1", "coleta seletiva", "Brasil Coleta", "Brasília", 61999990008, "coletabrasil@gmail.com"),
("901.234.567-88", "1", "coleta seletiva", "Sustentável Coleta", "Salvador", 71999990009, "coletasustentavel@gmail.com"),
("012.345.678-99", "1", "coleta seletiva", "Lixo Limpo", "Fortaleza", 85999990010, "coletalixo@gmail.com"),
("121.314.151-00", "1", "coleta seletiva", "Reciclagem Brasil", "Manaus", 92999990011, "coletareciclagem@gmail.com"),
("131.415.161-11", "1", "coleta seletiva", "Limpa Urbana", "Belém", 91999990012, "coletalimpaurbana@gmail.com"),
("141.516.171-22", "1", "coleta seletiva", "Limpa Cidade", "João Pessoa", 83999990013, "coletalimpacidade@gmail.com"),
("151.617.181-33", "1", "coleta seletiva", "Limpa SP", "São Paulo", 11999990014, "coletalimpasaopaulo@gmail.com"),
("161.718.192-44","1", "coleta seletiva", "Limpa Niterói", "Niterói", 21999990015, "coletalimpaniteroi@gmail.com"),
("171.819.203-55", "1", "coleta seletiva", "Limpa Pernambuco", "Recife", 81999990016, "coletalimpapernambuco@gmail.com"),
("181.920.214-66", "1", "coleta seletiva", "Limpa Norte", "Belém", 91999990017, "coletalimpanorte@gmail.com"),
("192.021.225-77","1", "coleta seletiva", "Limpa Sul", "Porto Alegre", 51999990018, "coletalimpasul@gmail.com"),
("202.122.236-88", "1", "coleta seletiva", "Limpa Centro", "Brasília", 61999990019, "coletalimpacentro@gmail.com"),
("212.223.247-99", "1", "coleta seletiva", "Brasil Central Limpo", "Goiânia", 62999990020, "coletalimpabrasilcentral@gmail.com");

insert into cursos_conteudo( titulo, tipo, categoria, url_arquivo, disponível_desde)
values
( "Introdução à Reciclagem", "conteudo educativo", "iniciante", "https://tinyurl.com/curso184", "2023-06-05"),
("Gestão de Resíduos em Barbearias", "conteudo educativo", "intermediario", "https://tinyurl.com/curso185", "2023-06-06"),
( "Coleta Seletiva: Práticas e Benefícios", "conteudo educativo", "iniciante", "https://tinyurl.com/curso186", "2023-06-07"),
("Sustentabilidade no Dia a Dia", "conteudo educativo", "iniciante", "https://tinyurl.com/curso187", "2023-06-08"),
("Redução de Desperdício", "conteudo educativo", "intermediario", "https://tinyurl.com/curso188", "2023-06-09"),
("Reciclagem de Materiais Orgânicos", "conteudo educativo", "avancado", "https://tinyurl.com/curso189", "2023-06-10"),
("Biossegurança em Salões", "conteudo educativo", "intermediario", "https://tinyurl.com/curso190", "2023-06-11"),
( "Descarte Correto de Lâminas", "conteudo educativo", "iniciante", "https://tinyurl.com/curso191", "2023-06-12"),
( "Impactos Ambientais dos Resíduos", "conteudo educativo", "avancado", "https://tinyurl.com/curso192", "2023-06-13"),
( "Economia Circular", "conteudo educativo", "intermediario", "https://tinyurl.com/curso193", "2023-06-14"),
( "Reciclagem de Plásticos", "conteudo educativo", "iniciante", "https://tinyurl.com/curso194", "2023-06-15"),
("Educação Ambiental para Profissionais", "conteudo educativo", "intermediario", "https://tinyurl.com/curso195", "2023-06-16"),
("Certificação Verde para Barbearias", "conteudo educativo", "avancado", "https://tinyurl.com/curso196", "2023-06-17"),
("Reaproveitamento de Materiais", "conteudo educativo", "iniciante", "https://tinyurl.com/curso197", "2023-06-18"),
("Legislação Ambiental", "conteudo educativo", "avancado", "https://tinyurl.com/curso198", "2023-06-19"),
( "Compostagem Urbana", "conteudo educativo", "intermediario", "https://tinyurl.com/curso199", "2023-06-20"),
( "Gestão de Água em Barbearias", "conteudo educativo", "iniciante", "https://tinyurl.com/curso200", "2023-06-21"),
( "Consumo Consciente", "conteudo educativo", "iniciante", "https://tinyurl.com/curso201", "2023-06-22"),
("Parcerias Sustentáveis", "conteudo educativo", "intermediario", "https://tinyurl.com/curso202", "2023-06-23"),
( "Tendências em Sustentabilidade", "conteudo educativo", "avancado", "https://tinyurl.com/curso203", "2023-06-24");

insert into gamificacao(atividades, pontos, `Usuarios_username(email)`)
values
("descarte de cabelos e laminas", "354", "barbeariaimperial@gmail.com"),
("descarte de embalagens e papeis", "327", "barbeariacentral@gmail.com"),
("descarte de residuos organicos", "289", "barbeariagold@gmail.com"),
( "descarte de laminas", "310", "barbeariabarbudo@gmail.com"),
("descarte de embalagens plasticas", "275", "barbeariasharp@gmail.com"),
("descarte de papeis", "298", "barbeariastyle@gmail.com"),
("descarte de cabelos", "340", "barbeariapremium@gmail.com"),
("descarte de residuos diversos", "260", "barbeariaurbana@gmail.com"),
("descarte de laminas e papeis", "312", "barbeariaelite@gmail.com"),
("descarte de embalagens", "280", "barbeariaexpress@gmail.com"),
("descarte de cabelos e embalagens", "330", "barbeariafina@gmail.com"),
("descarte de residuos organicos", "295", "barbeariamoderna@gmail.com"),
("descarte de papeis e embalagens", "320", "barbeariavip@gmail.com"),
("descarte de laminas", "305", "barbeariapopular@gmail.com"),
("descarte de cabelos", "345", "barbeariaarte@gmail.com"),
("descarte de embalagens plasticas", "270", "barbeariabarbearia@gmail.com"),
("descarte de residuos diversos", "265", "barbeariaglamour@gmail.com"),
("descarte de papeis", "299", "barbeariaestilo@gmail.com"),
("descarte de laminas e cabelos", "355", "barbeariazen@gmail.com"),
("descarte de embalagens e papeis", "325", "barbeariaurbano@gmail.com");

insert into barbearias_has_cursos_conteudo(Barbearias_id_barbearias, Cursos_conteudo_id_conteudo)
values
("1", "7"),
("2", "13"),
("3", "2"),
("4", "19"),
("5", "5"),
("6", "16"),
("7", "1"),
("8", "12"),
("9", "20"),
("10", "8"),
("11", "3"),
("12", "15"),
("13", "10"),
("14", "18"),
("15", "6"),
("16", "4"),
("17", "14"),
("18", "9"),
("19", "11"),
("20", "17");
