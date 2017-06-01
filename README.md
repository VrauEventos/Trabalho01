# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1.COMPONENTES<br>
Bruno Vicente do Nascimento e
Maria Eduarda Mendes Santana<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
O presente trabalho é sobre um site de eventos, mais concretamente sobre um banco de dados onde será armazenado informações sobre os eventos e sobre os usuários, onde permitira que os usários armazenem e acumulem pontos de descontos. Nossa motivação foi a crescente procura por eventos, como shows e festas de confiança, onde o usuário pudesse ter a confiança de que este evento não é um "fake", isto é, falso.

### 3.MINI-MUNDO<br>

Retrataremos um site de eventos, no qual, o usuário terá um cadastro e uma página para seu perfil, na qual conterá as informações referentes ao próprio usuário, por exemplo, Nome completo, CPF, Data de Nascimento, Sexo, Cidade, CEP, Telefone ou Celular e um e-mail. Este usuário acessará informações do site, separados por categorias, sendo elas: Shows, eventos, festas e mais visualizados, onde cada evento fornece informações como localização (rua, número, bairro, cidade) preço, data, hora e uma breve descrição. Esses eventos tem uma pontuação, que o usuário pode receber se realizar uma série de ações usadas como uma confirmação de presença, tendo como princípio do QR code que acumulam pontos para o usuário, se optar por adquiri-los poderá trocar os pontos por descontos nos aplicativos com parcerias com o site, que são Uber e Ifood.

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Alt text](https://github.com/VrauEventos/Trabalho01/blob/master/VRAU%20(3).pdf)


### 5.MODELO CONCEITUAL<br>
    a) NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/VrauEventos/Trabalho01/blob/master/print_conceitual.png)
    
    b) NOTACAO UML (Caso esteja fazendo a disciplina de analise)

#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    cod_estado: usamos como chave primária pois assim teriamos como identificar e organizar cada estado, sem fazer com que eles se repitam.
    cod_cidade: identificar a cidade, sem fazer com que repita.
    cod_bairro: chave primaria, identificando um único bairro.
    cod_tipo_local: Cada local tem um tipo, seja rua, avenida, etc. Essa chave primária é usada para separar e oranizar essa divisão.
    cod_tipo_evento: Chave primária para separar e agrupar, organizando cada tipo de evento.
    CEP: Chave primária, por não se repetir.
    cod_evento: Chave primária. Cada evento recebe um codigo unico, para identificar qual evento o usuario foi e quantos pontos é necessario acumular no qr_code
    codigo: Chave primaria para identificar cada usuario, uma vez que o nome de usuario pode acabar se repetindo.
    cod_desconto:Chave primaria para descontar do perfil do usuario, leitura do qr_code do usuario.
    
#### 5.3 DESCRIÇÃO DOS DADOS 
    ESTADO: Tabela onde guarda informações sobre os Estados cadastrados.
    nome_estado: identificação do estado.
    CIDADE: Tabela para armazenar informações das cidades.
    nome_cidade: usado para identificar a cidade, podendo repetir, uma vez que não é chave primária.
    BAIRRO: Tabela para armazenar informações dos bairros.
    nome_bairro: atributo simples, apenas identificação.
    TIPO_LOCAL: Tabela para separar e organizar os locais em "setores".
    descricao_local: Cada código é ligado a um tipo de local, para identificar que o código pertence ao local é usada a descrição
    LOCAL: Tabela para mais informações do local do evento.
    rua_descricao: descrição como nome da rua, número e complemento.
    TIPO_EVENTO: Tabela para organizar os tipos de eventos.
    descricao_tipo: Cada codigo esta associado a uma descrição, assim identificando qual codigo é de qual evento.
    EVENTO_CREDITO: Tabela ppara armazenar os pontos e o acumulo de credito e descontos do usuario.
    descricao_evento_credito: descrição do evento, contento informaçoes para o usuario.
    preco: descrição do evento, contendo preço.
    data: descrição do evento, contendo data.
    nome_evento: descrição do evento, contendo nome.
    horario: descrição do evento, contendo um horario.
    qrcode_evento: Cada evento possue um qr_code, que soma pontos para o usuario.
    
    data_hora: usada para saber que horas e qual foi o evento que o usuario usou o qr_code, para confirmar validação do mesmo.
    pontos: acumulo de pontos, que esta ligado a um codigo de evento e a um qr_code.
    PESSOA: Tabela com os dados pessoais, para criar um perfil para o usuario.
    senha: usada para acesso do usuario.
    data_de_nasc: dados do usuario.
    sexo:  dados do usuario.
    nome_usuario: dados do usuario.
    perfil: foto.
    email: dados do usuario.
    CPF:   dados do usuario.
    nome_completo: dados do usuario.
    contatos: Campo multivalorado,,pois o usuario pode ter varias formas de comunicação.
    qrcode_usuario:  dados do usuario
    EVENTO_DESCONTO: Tabela para armazenar informações do gasto do usuario.
    descricao_evento_desconto: saber e calcular onde foi gasto e quando.


### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/VrauEventos/Trabalho01/blob/master/print_logico.png)

### 7	MODELO FÍSICO<br>
CREATE TABLE ESTADO (
cod_estado VARCHAR(10) PRIMARY KEY,
nome_estado VARCHAR(10)
)

CREATE TABLE CIDADE (
nome_cidade VARCHAR(10),
cod_cidade VARCHAR(10) PRIMARY KEY,
cod_estado VARCHAR(10),
FOREIGN KEY(cod_estado) REFERENCES ESTADO (cod_estado)
)

CREATE TABLE BAIRRO (
nome_bairro VARCHAR(10),
cod_bairro VARCHAR(10) PRIMARY KEY
)

CREATE TABLE LOCAL (
rua_descricao VARCHAR(10),
CEP VARCHAR(10) PRIMARY KEY,
cod_tipo_local VARCHAR(10),
cod_bairro VARCHAR(10),
FOREIGN KEY(cod_bairro) REFERENCES BAIRRO (cod_bairro)
)

CREATE TABLE TIPO_LOCAL (
cod_tipo_local VARCHAR(10) PRIMARY KEY,
descricao_tipo_local VARCHAR(10)
)

CREATE TABLE TIPO_EVENTO (
codigo_tipo_evento VARCHAR(10) PRIMARY KEY,
descricao_tipo_evento VARCHAR(10)
)

CREATE TABLE EVENTO_CREDITO (
nome_evento VARCHAR(10),
data VARCHAR(10),
preço VARCHAR(10),
qrcode_evento VARCHAR(10),
Cod_evento VARCHAR(10) PRIMARY KEY,
horario VARCHAR(10),
descricao_evento_credito VARCHAR(10),
codigo_tipo_evento VARCHAR(10),
FOREIGN KEY(codigo_tipo_evento) REFERENCES TIPO_EVENTO (codigo_tipo_evento)
)

CREATE TABLE PESSOA (
sexo VARCHAR(10),
email VARCHAR(10),
codigo VARCHAR(10) PRIMARY KEY,
perfil VARCHAR(10),
nome_usuario VARCHAR(10),
qrcode_usuario VARCHAR(10),
CPF VARCHAR(10),
senha VARCHAR(10),
data_de_nascimento VARCHAR(10),
nome_completo VARCHAR(10)
)

CREATE TABLE EVENTO_DESCONTO (
descricao VARCHAR(10),
cod_desconto VARCHAR(10) PRIMARY KEY
)

CREATE TABLE contatos (
contatos_PK INTEGER PRIMARY KEY,
contatos VARCHAR(10),
codigo_FK VARCHAR(),
FOREIGN KEY(codigo_FK) REFERENCES PESSOA (codigo)
)

CREATE TABLE possui1 (
cod_cidade VARCHAR(10),
cod_bairro VARCHAR(10),
FOREIGN KEY(cod_cidade) REFERENCES CIDADE (cod_cidade),
FOREIGN KEY(cod_bairro) REFERENCES BAIRRO (cod_bairro)
)

CREATE TABLE vai (
data_hora VARCHAR(10),
pontos VARCHAR(10),
Cod_evento VARCHAR(10),
codigo VARCHAR(10),
FOREIGN KEY(Cod_evento) REFERENCES EVENTO_CREDITO (Cod_evento),
FOREIGN KEY(codigo) REFERENCES PESSOA (codigo)
)

CREATE TABLE debita (
data_hora VARCHAR(10),
pontos VARCHAR(10),
cod_desconto VARCHAR(10),
codigo VARCHAR(10),
FOREIGN KEY(cod_desconto) REFERENCES EVENTO_DESCONTO (cod_desconto),
FOREIGN KEY(codigo) REFERENCES PESSOA (codigo)
)

CREATE TABLE possui (
CEP VARCHAR(10),
Cod_evento VARCHAR(10),
FOREIGN KEY(CEP) REFERENCES LOCAL (CEP),
FOREIGN KEY(Cod_evento) REFERENCES EVENTO_CREDITO (Cod_evento)
)

ALTER TABLE LOCAL ADD FOREIGN KEY(cod_tipo_local) REFERENCES TIPO_LOCAL (cod_tipo_local)

        
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
![Alt text](https://github.com/VrauEventos/Trabalho01/blob/master/INSERT.png)
![Alt text](https://github.com/VrauEventos/Trabalho01/blob/master/INSERT2.png)
![Alt text](https://github.com/VrauEventos/Trabalho01/blob/master/INSERT3.png)
![Alt text](https://github.com/VrauEventos/Trabalho01/blob/master/INSERT4.png)

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
     
        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas)<br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        Entrega até este ponto em (data a ser definida)
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
