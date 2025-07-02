CREATE SCHEMA IF NOT EXISTS `EcoBarber` DEFAULT CHARACTER SET utf8 ;
USE `EcoBarber` ;


CREATE TABLE IF NOT EXISTS `EcoBarber`.`Usuarios` (
  `username(email)` VARCHAR(40) NOT NULL,
  `senha` VARCHAR(9) NOT NULL,
  `tipo_usuario` VARCHAR(45) NOT NULL,
  `data_cadastro` VARCHAR(45) NOT NULL,
  `status_conta` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`username(email)`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `EcoBarber`.`Empresas_parceiras` (
  `cpf_cnpj` VARCHAR(14) NOT NULL ,
  `id_parceiro` INT UNSIGNED unique NULL auto_increment,
  `status_parceria` TINYINT NULL,
  `tipo_servico` VARCHAR(45) NOT NULL,
  `razao_social` VARCHAR(45) NOT NULL,
  `cidade_atendimento` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  `Usuarios_username(email)` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`cpf_cnpj`),
  INDEX `fk_Empresas_parceiras_Usuarios1_idx` (`Usuarios_username(email)` ASC) VISIBLE,
  CONSTRAINT `fk_Empresas_parceiras_Usuarios1`
    FOREIGN KEY (`Usuarios_username(email)`)
    REFERENCES `EcoBarber`.`Usuarios` (`username(email)`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `EcoBarber`.`Residuos` (
  `id_residuo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Categoria` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Descricao` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_residuo`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `EcoBarber`.`Barbearias` (
  `id_barbearias` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome_fantasia` VARCHAR(45) NOT NULL,
  `num_profissionais` INT NOT NULL,
  `cnpj_cpf` VARCHAR(14) NOT NULL,
  `Usuarios_username(email)` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id_barbearias`),
  UNIQUE INDEX `nome_fantasia_UNIQUE` (`nome_fantasia` ASC) VISIBLE,
  INDEX `fk_Barbearias_Usuarios1_idx` (`Usuarios_username(email)` ASC) VISIBLE,
  CONSTRAINT `fk_Barbearias_Usuarios1`
    FOREIGN KEY (`Usuarios_username(email)`)
    REFERENCES `EcoBarber`.`Usuarios` (`username(email)`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `EcoBarber`.`Descartar` (
  `Residuos_id_residuo` INT UNSIGNED NOT NULL,
  `Barbearias_id_barbearias` INT UNSIGNED NOT NULL,
  `id_descarte` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `Quantidade` DECIMAL(6,2) NULL,
  PRIMARY KEY (`id_descarte`, `Residuos_id_residuo`, `Barbearias_id_barbearias`),
  INDEX `fk_Residuos_has_Barbearias_Barbearias1_idx` (`Barbearias_id_barbearias` ASC) VISIBLE,
  INDEX `fk_Residuos_has_Barbearias_Residuos1_idx` (`Residuos_id_residuo` ASC) VISIBLE,
  CONSTRAINT `fk_Residuos_has_Barbearias_Residuos1`
    FOREIGN KEY (`Residuos_id_residuo`)
    REFERENCES `EcoBarber`.`Residuos` (`id_residuo`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Residuos_has_Barbearias_Barbearias1`
    FOREIGN KEY (`Barbearias_id_barbearias`)
    REFERENCES `EcoBarber`.`Barbearias` (`id_barbearias`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `EcoBarber`.`Solitacoes_coleta` (
  `idSolitacoes` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_solicitacao` DATE NOT NULL,
  `data_prevista` DATE NOT NULL,
  `data_coleta` DATE NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `HistóricoDescarte_idHistóricoDescarte` INT NOT NULL,
  `Descartar_id_descarte` INT NOT NULL,
  `Descartar_Residuos_id_residuo` INT unsigned NOT NULL,
  `Descartar_Barbearias_id_barbearias` INT unsigned NOT NULL,
  PRIMARY KEY (`idSolitacoes`),
  INDEX `fk_Solitacoes_coleta_Descartar1_idx` (`Descartar_id_descarte` ASC, `Descartar_Residuos_id_residuo` ASC, `Descartar_Barbearias_id_barbearias` ASC) VISIBLE,
  CONSTRAINT `fk_Solitacoes_coleta_Descartar1`
    FOREIGN KEY (`Descartar_id_descarte` , `Descartar_Residuos_id_residuo` , `Descartar_Barbearias_id_barbearias`)
    REFERENCES `EcoBarber`.`Descartar` (`id_descarte` , `Residuos_id_residuo` , `Barbearias_id_barbearias`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `EcoBarber`.`Gamificacao` (
  `id_pontuacao` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `atividades` VARCHAR(45) NULL,
  `pontos` VARCHAR(45) NULL,
  `data` VARCHAR(45) NULL,
  `Usuarios_username(email)` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id_pontuacao`),
  INDEX `fk_Gamificacao_Usuarios1_idx` (`Usuarios_username(email)` ASC) VISIBLE,
  CONSTRAINT `fk_Gamificacao_Usuarios1`
    FOREIGN KEY (`Usuarios_username(email)`)
    REFERENCES `EcoBarber`.`Usuarios` (`username(email)`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `EcoBarber`.`Cursos_conteudo` (
  `id_conteudo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `categoria` VARCHAR(45) NOT NULL,
  `url_arquivo` VARCHAR(45) NOT NULL,
  `disponível_desde` DATE NULL,
  PRIMARY KEY (`id_conteudo`))
ENGINE = InnoDB;




CREATE TABLE IF NOT EXISTS `EcoBarber`.`Endereco` (
  `Barbearias_id_barbearias` INT unsigned NOT NULL,
  `UF` CHAR(2) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `comp` VARCHAR(45) NULL,
  `cep` VARCHAR(9) NOT NULL,
  INDEX `fk_Endereco_Barbearias_idx` (`Barbearias_id_barbearias` ASC) VISIBLE,
  PRIMARY KEY (`Barbearias_id_barbearias`),
  CONSTRAINT `fk_Endereco_Barbearias`
    FOREIGN KEY (`Barbearias_id_barbearias`)
    REFERENCES `EcoBarber`.`Barbearias` (`id_barbearias`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `EcoBarber`.`Solicitar` (
  `Barbearias_id_barbearias` INT unsigned NOT NULL,
  `Empresas_parceiras_cpf_cnpj` VARCHAR(14) NOT NULL,
  `Solitacoes_coleta_idSolitacoes` INT unsigned NOT NULL,
  PRIMARY KEY (`Barbearias_id_barbearias`, `Empresas_parceiras_cpf_cnpj`, `Solitacoes_coleta_idSolitacoes`),
  INDEX `fk_Barbearias_has_Empresas_parceiras_Empresas_parceiras1_idx` (`Empresas_parceiras_cpf_cnpj` ASC) VISIBLE,
  INDEX `fk_Barbearias_has_Empresas_parceiras_Barbearias1_idx` (`Barbearias_id_barbearias` ASC) VISIBLE,
  INDEX `fk_Solicitar_Solitacoes_coleta1_idx` (`Solitacoes_coleta_idSolitacoes` ASC) VISIBLE,
  CONSTRAINT `fk_Barbearias_has_Empresas_parceiras_Barbearias1`
    FOREIGN KEY (`Barbearias_id_barbearias`)
    REFERENCES `EcoBarber`.`Barbearias` (`id_barbearias`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Barbearias_has_Empresas_parceiras_Empresas_parceiras1`
    FOREIGN KEY (`Empresas_parceiras_cpf_cnpj`)
    REFERENCES `EcoBarber`.`Empresas_parceiras` (`cpf_cnpj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Solicitar_Solitacoes_coleta1`
    FOREIGN KEY (`Solitacoes_coleta_idSolitacoes`)
    REFERENCES `EcoBarber`.`Solitacoes_coleta` (`idSolitacoes`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `EcoBarber`.`Barbearias_has_Cursos_conteudo` (
  `Barbearias_id_barbearias` INT unsigned NOT NULL,
  `Cursos_conteudo_id_conteudo` INT unsigned NOT NULL,
  PRIMARY KEY (`Barbearias_id_barbearias`, `Cursos_conteudo_id_conteudo`),
  INDEX `fk_Barbearias_has_Cursos_conteudo_Cursos_conteudo1_idx` (`Cursos_conteudo_id_conteudo` ASC) VISIBLE,
  INDEX `fk_Barbearias_has_Cursos_conteudo_Barbearias1_idx` (`Barbearias_id_barbearias` ASC) VISIBLE,
  CONSTRAINT `fk_Barbearias_has_Cursos_conteudo_Barbearias1`
    FOREIGN KEY (`Barbearias_id_barbearias`)
    REFERENCES `EcoBarber`.`Barbearias` (`id_barbearias`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Barbearias_has_Cursos_conteudo_Cursos_conteudo1`
    FOREIGN KEY (`Cursos_conteudo_id_conteudo`)
    REFERENCES `EcoBarber`.`Cursos_conteudo` (`id_conteudo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `EcoBarber` ;


CREATE TABLE IF NOT EXISTS `EcoBarber`.`view1` (`id` INT);


DROP TABLE IF EXISTS `EcoBarber`.`view1`;
USE `EcoBarber`;
