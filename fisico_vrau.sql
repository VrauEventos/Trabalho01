-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE ESTADO (
cod_estado NUMERIC(10) PRIMARY KEY,
nome_estado VARCHAR(20)
)

CREATE TABLE CIDADE (
nome_cidade VARCHAR(45),
cod_cidade NUMERIC(10) PRIMARY KEY,
cod_estado NUMERIC(10),
FOREIGN KEY(cod_estado) REFERENCES ESTADO (cod_estado)
)

CREATE TABLE possui1 (
cod_cidade NUMERIC(10),
cod_bairro NUMERIC(10),
FOREIGN KEY(cod_cidade) REFERENCES CIDADE (cod_cidade)
)

CREATE TABLE BAIRRO (
nome_bairro VARCHAR(45),
cod_bairro NUMERIC(10) PRIMARY KEY
)

CREATE TABLE possui (
CEP NUMERIC(10),
Cod_evento NUMERIC(10)
)

CREATE TABLE TIPO_LOCAL (
cod_tipo_local NUMERIC(10) PRIMARY KEY,
descricao_tipo_local VARCHAR(15)
)

CREATE TABLE LOCAL (
rua_descricao VARCHAR(15),
CEP NUMERIC(10) PRIMARY KEY,
cod_tipo_local NUMERIC(10),
cod_bairro NUMERIC(10),
FOREIGN KEY(cod_tipo_local) REFERENCES TIPO_LOCAL (cod_tipo_local),
FOREIGN KEY(cod_bairro) REFERENCES BAIRRO (cod_bairro)
)

CREATE TABLE EVENTO_CREDITO (
nome_evento VARCHAR(20),
data DATETIME,
preço DECIMAL(10),
qrcode_evento VARCHAR(10),
Cod_evento NUMERIC(10) PRIMARY KEY,
horario DATETIME,
descricao_evento_credito VARCHAR(20),
codigo_tipo_evento NUMERIC(10)
)

CREATE TABLE TIPO_EVENTO (
codigo_tipo_evento NUMERIC(10) PRIMARY KEY,
descricao_tipo_evento VARCHAR(10)
)

CREATE TABLE PESSOA_Perfil (
sexo VARCHAR(1),
email VARCHAR(30),
codigo NUMERIC(10) PRIMARY KEY,
perfil VARCHAR(10),
nome_usuario VARCHAR(10),
qrcode_usuario VARCHAR(10),
contatos VARCHAR(10),
contatos1 NUMERIC(10),
contatos2 NUMERIC(10),
contatos3 NUMERIC(10),
contatos4 NUMERIC(10),
CPF NUMERIC(11),
senha VARCHAR(20),
data_de_nascimento SMALLDATETIME,
nome_completo VARCHAR(45)
)

CREATE TABLE vai (
data_hora DATETIME,
pontos DECIMAL(10),
Cod_evento NUMERIC(10),
codigo NUMERIC(10),
FOREIGN KEY(Cod_evento) REFERENCES EVENTO_CREDITO (Cod_evento),
FOREIGN KEY(codigo) REFERENCES PESSOA_Perfil (codigo)
)

CREATE TABLE debita (
data_hora DATETIME,
pontos NUMERIC(10),
cod_desconto NUMERIC(10),
codigo NUMERIC(10),
FOREIGN KEY(codigo) REFERENCES PESSOA_Perfil (codigo)
)

CREATE TABLE EVENTO_DESCONTO (
descricao VARCHAR(10),
cod_desconto NUMERIC(10) PRIMARY KEY
)

ALTER TABLE possui1 ADD FOREIGN KEY(cod_bairro) REFERENCES BAIRRO (cod_bairro)
ALTER TABLE possui ADD FOREIGN KEY(CEP) REFERENCES LOCAL (CEP)
ALTER TABLE possui ADD FOREIGN KEY(Cod_evento) REFERENCES EVENTO_CREDITO (Cod_evento)
ALTER TABLE EVENTO_CREDITO ADD FOREIGN KEY(codigo_tipo_evento) REFERENCES TIPO_EVENTO (codigo_tipo_evento)
ALTER TABLE debita ADD FOREIGN KEY(cod_desconto) REFERENCES EVENTO_DESCONTO (cod_desconto)
