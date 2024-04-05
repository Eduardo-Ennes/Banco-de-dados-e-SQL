/* Curso de Banco de Dados */

CLIENTE:
Nome - Caracter (10)
CPF - númerico (11)
E-mail - caracter (30)
Telefone - caracter (30)
Endereço - caracter (100)
Sexo - Caracter (1)


/* Processo de modelagem */

/* Fase 01 e 02 - AD ADM DE DADOS */ 
MODELAGEM CONCEITUAL - QUALQUER RASCUNHO 
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM 


/* fase 03 - DBA / AD */
MODELAGEM FÍSICA - SCRIPTS DE BANCO 


/* INICIANDO A MODELAGEM FÍSICA */ 

/* CRIANDO O BANCO DE DADOS */
CREATE DATEBASE Nome;


/* CONECTANDO-SE AO BANCO */
USE PROJETO;


/* CRIANDO A TABELA */ 
/* CLIENTE ESTÁ DENTRO DE PROJETO */
CREATE TABLE CLIENTE(

	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR (30), 
	ENDERECO VARCHAR(100)
	
); 


/* VERIFICANDO AS TABELAS D0 BANCO */ 
SHOW TABLES; 


/* DESCOBRINDO COMO É A ESTRUTURA DE UMA TABELA */ 
DESC NOMEDATABELA;


/* Sintaxe basica para inserção - "INSERT INTO NODEDATABELA" */

/*Forma 01 - Omitindo as colunas */ --> não é a melhor forma de se fazer, pq, se faltar um valor o proximo tomará o lugar.
INSERT INTO CLIENTE VALUES ('John Kennedy', 'M', 'presidente@icloud.com', 654986235, 21995698632, 'Rua Jaranjeiras - RJ');

/* Forma 02 - colocando as colunas */ 
INSERT INTO CLIENTE(NOME, SEXO, CPF, ENDERECO, TELEFONE) VALUES('Eduardo', 'M', 964832564, 'Tijuca - 45', 21965329865);
INSERT INTO CLIENTE(NOME, SEXO, CPF, ENDERECO, TELEFONE) VALUES('Letiçia', 'F', 964832564, 'Rio das Ostras - RJ', 21965329865);


/* Mostra o que a na lista */
SELECT NOME, SEXO, CPF FROM CLIENTE;
SELECT NOME, SEXO, CPF, NOW() AS DATE_HORA FROM CLIENTE;

/* Comando que mostra toda a lista */ --> usar mais em situação academica.
SELECT * FROM NOMEDATABELA;
 

/* Para projeção usamos SELECT /*
/* Para seleção usamos WHERE */

SELECT NOME, SEXO FROM CLIENTE
WHERE SEXO = 'M';  /* --> Só mostra pessoas masculinas na lista. */

SELECT NOME, ENDERECO FROM CLIENTE
WHERE SEXO = 'F';

/* Utilizando o LIKE  E CARACTER CORINGA */ --> Metodo para filtrar buscas.
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%Ti';