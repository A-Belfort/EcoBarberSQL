ALTER TABLE Usuarios
ADD COLUMN email_alternativo VARCHAR(100) NULL;

ALTER TABLE Residuos
CHANGE COLUMN Categoria categoria_residuo VARCHAR(45) NOT NULL;

ALTER TABLE Gamificacao
MODIFY COLUMN pontos INT;

ALTER TABLE Solitacoes_coleta
ADD COLUMN observacoes TEXT NULL;

ALTER TABLE Endereco
MODIFY COLUMN comp VARCHAR(45) NOT NULL;

ALTER TABLE Empresas_parceiras
MODIFY COLUMN telefone VARCHAR(20) NOT NULL;

ALTER TABLE Descartar
MODIFY COLUMN Quantidade DECIMAL(7,2);

ALTER TABLE Cursos_conteudo
MODIFY COLUMN url_arquivo VARCHAR(100) NOT NULL;

ALTER TABLE Solicitar
ADD COLUMN nota_avaliacao TINYINT NULL;

ALTER TABLE usuarios
DROP COLUMN email_alternativo;




