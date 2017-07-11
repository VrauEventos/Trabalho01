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
![Alt text]https://github.com/VrauEventos/Trabalho01/blob/master/bd_trabalho.PNG
    
    b) NOTACAO UML (Caso esteja fazendo a disciplina de analise)

#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
#### 5.3 DESCRIÇÃO DOS DADOS 
    cod_estado: usamos como chave primária pois assim teriamos como identificar e organizar cada estado, sem fazer com que eles se repitam.
    cod_cidade: identificar a cidade, sem fazer com que repita.
    cod_bairro: chave primaria, identificando um único bairro.
    cod_tipo_local: Cada local tem um tipo, seja rua, avenida, etc. Essa chave primária é usada para separar e oranizar essa divisão.
    cod_tipo_evento: Chave primária para separar e agrupar, organizando cada tipo de evento.
    CEP: Chave primária, por não se repetir.
    cod_evento: Chave primária. Cada evento recebe um codigo unico, para identificar qual evento o usuario foi e quantos pontos é necessario acumular no qr_code
    codigo: Chave primaria para identificar cada usuario, uma vez que o nome de usuario pode acabar se repetindo.
    cod_desconto:Chave primaria para descontar do perfil do usuario, leitura do qr_code do usuario.
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
![Alt text]

### 7	MODELO FÍSICO<br>
        https://github.com/VrauEventos/Trabalho01/blob/master/fisico_vrau_bd.sql
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES

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
