 create DATABASE if not exists VRAU_EVENTOS ;

USE VRAU_EVENTOS;
CREATE TABLE ESTADO (
cod_estado int not null PRIMARY KEY,
nome_estado VARCHAR(45)
);
insert into ESTADO
values (100, 'Sao_paulo');

CREATE TABLE CIDADE (
nome_cidade VARCHAR(45),
cod_cidade int not null PRIMARY KEY,
cod_estado int not null,
FOREIGN KEY(cod_estado) REFERENCES ESTADO (cod_estado)
); 
insert into cidade 
values ('santos',1,100);

CREATE TABLE BAIRRO (
nome_bairro VARCHAR(45),
cod_bairro int not null PRIMARY KEY
);

insert into bairro
values ('gloria', 4) ;


CREATE TABLE TIPO_LOCAL (
cod_tipo_local int not null PRIMARY KEY,
descricao_tipo_local VARCHAR(45)
);
insert into tipo_local 
values (112,'rua');

CREATE TABLE TIPO_EVENTO (
codigo_tipo_evento int not null PRIMARY KEY,
descricao_tipo_evento VARCHAR(45)
);

insert into tipo_evento
values (5,'rock');

CREATE TABLE EVENTO_DESCONTO (
descricao VARCHAR(45),
cod_desconto int PRIMARY KEY
);
insert into evento_desconto
values ('uber',33) ;

CREATE TABLE LOCAL (
rua_descricao VARCHAR(45),
CEP int PRIMARY KEY,
cod_tipo_local int,
cod_bairro int,
FOREIGN KEY(cod_tipo_local) REFERENCES TIPO_LOCAL (cod_tipo_local),
FOREIGN KEY(cod_bairro) REFERENCES BAIRRO (cod_bairro)
);

insert into local
values ('jose_silva',2979,112,4);

CREATE TABLE EVENTO_CREDITO (
nome_evento VARCHAR(45),
data date ,
preço int,
qrcode_evento VARCHAR(45),
Cod_evento int PRIMARY KEY,
horario time ,
descricao_evento_credito VARCHAR(45),
codigo_tipo_evento int not null,
FOREIGN KEY(codigo_tipo_evento) REFERENCES TIPO_EVENTO (codigo_tipo_evento)
);
insert into evento_credito
values ('festeja','2000:08:07',65,112, 5,  '21:00:00','festeja',5);


CREATE TABLE PESSOA (
qrcode_usuario VARCHAR(45),
contatos varchar (45),
contatos1 varchar (45),
contatos2 varchar (45),
contatos3 varchar(45),
contatos4 varchar(45),
CPF int not null,
data_de_nascimento date,
nome_completo VARCHAR(45),
codigo int not null PRIMARY KEY,
sexo VARCHAR(10),
endereço VARCHAR(45)
);
insert into pessoa
values('3247','2799876545','2733378990','1','1','1',1577768,
'1990:07:08','joao_da_silva',560,'M','AV.Afonso_padilha');

CREATE TABLE Perfil (
usuário VARCHAR(45) PRIMARY KEY,
email VARCHAR(45),
senha VARCHAR(45),
codigo int,
FOREIGN KEY(codigo) REFERENCES PESSOA (codigo)
);
insert into perfil
values('junin_10','junin_p@hotmail.com',5474,560);

CREATE TABLE debita (
data_hora datetime,
pontos VARCHAR(45),
cod_desconto int,
codigo int,
FOREIGN KEY(cod_desconto) REFERENCES EVENTO_DESCONTO (cod_desconto),
FOREIGN KEY(codigo) REFERENCES PESSOA (codigo)
);
insert into debita
values ('21:00:00','40',33,560);

create table contem(
CEP int,
Cod_evento int,
FOREIGN KEY(CEP) REFERENCES LOCAL (CEP),
FOREIGN KEY(Cod_evento) REFERENCES EVENTO_CREDITO (Cod_evento)
);


CREATE TABLE possui1 (
cod_cidade int,
cod_bairro int,
FOREIGN KEY(cod_cidade) REFERENCES CIDADE (cod_cidade),
FOREIGN KEY(cod_bairro) REFERENCES BAIRRO (cod_bairro)
);
CREATE TABLE possui (
codigo int,
CEP int,
FOREIGN KEY(codigo) REFERENCES PESSOA (codigo),
FOREIGN KEY(CEP) REFERENCES LOCAL (CEP)
);

CREATE TABLE vai (
data_hora datetime,
codigo int,
Cod_evento int,
FOREIGN KEY(codigo) REFERENCES PESSOA (codigo),
FOREIGN KEY(Cod_evento) REFERENCES EVENTO_CREDITO (Cod_evento)
);
