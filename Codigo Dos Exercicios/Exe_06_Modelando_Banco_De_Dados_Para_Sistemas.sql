/* MODELANDO BANCO DE DADOS PARA SISTEMAS */
/* 
PRIMEIRA FORMA NORMAL

1 - Todo campo vetorizado se tornará outra lista

2 - Todo campo multivalorizado se tornará outra tabela. Quando o campo for divisível.

3 - Toda tabela necessita de pelo menos um campo que identifique todo o registro como sendo unico.
Isso é o que chamamos de chave primário ou primary key 
*/

CREATE DATABASE comercio;

USE comercio;

create table Formulario(
	IDCLIENTE int PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM('M' , 'F') NOT NULL, 
	EMAIL VARCHAR(50) UNIQUE,
	CPF VARCHAR(15) UNIQUE
);

/* 
PRIMARY KEY --> Funciona como um identificador para cada cadastro.

NOT NULL --> O campo deve ser preenchido obrigatoriamente, não pode ter valor null, não pode ser vazio.

ENUM --> funciona como uma caixa, deve-se escolher uma das opções, também é obrigatório escolher uma das opções.

UNIQUE --> O valor se torna unico, não haverá nem um igual, igual ao CPF .
 */


create table Enderecos(
	IDENDERECOS int PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL, 
	ESTADO VARCHAR(15) NOT NULL,
	ID_CLIENTE INT UNIQUE,
	FOREIGN KEY (ID_CLIENTE)
	REFERENCES Formulario(IDCLIENTE)
);


create table Telefone(
	IDTEL INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('RES', 'COM', 'CEL') NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT,
	FOREIGN KEY (ID_CLIENTE)
	REFERENCES Formulario(IDCLIENTE)
);


/* Este insert vai apresentar um erro, deve-se colocar todos os valores destinados no banco de dados */ 
INSERT INTO Formulario VALUES(NULL, 'Eduardo', 'M', 'edu@123.com',); 


/* Inserindo dados na tabela Formulario*/
/* Forma certa com todos os campos preenchidos */
INSERT INTO Formulario VALUES(NULL, 'Eduardo', 'M', 'edu@123.com', '85698652365');
INSERT INTO Formulario VALUES(NULL, 'Letiçia', 'F', 'letiçia@123.com', '63521653456');
INSERT INTO Formulario VALUES(NULL, 'Barbara', 'F', 'barbara@123.com', '75632641563');
INSERT INTO Formulario VALUES(NULL, 'Fernando', 'M', 'fefe@123.com', '34261845326');
INSERT INTO Formulario VALUES(NULL, 'Maira', 'F', 'Maira@123.com', '15236456325');
INSERT INTO Formulario VALUES(NULL, 'Celia', 'F', 'celia@123.com', '95686953265');
INSERT INTO Formulario VALUES(NULL, 'Bia', 'F', 'bia@123.com', '41524178452');
INSERT INTO Formulario VALUES(NULL, 'Ronaldinho', 'M', 'ronaldinho@123.com', '45625641523');


/* Inserindo dados na tabela ENDERECOS */
INSERT INTO ENDERECOS VALUES(NULL, 'General Roca', 'Tijuca', 'Rio de Janeiro', 'RJ', 1);
INSERT INTO ENDERECOS VALUES(NULL, 'Sal sem dente', 'Vila isabel', 'Rio de Janeiro', 'RJ', 2);
INSERT INTO ENDERECOS VALUES(NULL, 'Alura', 'Catete', 'Rio de Janeiro', 'RJ', 3);
INSERT INTO ENDERECOS VALUES(NULL, 'Boiabeira grande', 'Copacabana', 'Rio de Janeiro', 'RJ', 4);
INSERT INTO ENDERECOS VALUES(NULL, 'Munis freitas', 'Leblon', 'Rio de Janeiro', 'RJ', 5);
INSERT INTO ENDERECOS VALUES(NULL, 'Súmario da voz', 'Barra da tijuca', 'Rio de Janeiro', 'RJ', 6);
INSERT INTO ENDERECOS VALUES(NULL, 'Meia nove', 'Tijuca', 'Rio de Janeiro', 'RJ', 7);
INSERT INTO ENDERECOS VALUES(NULL, 'Palho sem aço', 'Ipanema', 'Rio de Janeiro', 'RJ', 8);


/* Inserindo dados na tabela TELEFONE */
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '98653652', 2);
INSERT INTO TELEFONE VALUES(NULL, 'RES', '98565326', 4);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '98652314', 8);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '91326532', 8);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '95822368', 7);
INSERT INTO TELEFONE VALUES(NULL, 'COM', '23651456', 5);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '85623659', 3);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '84715245', 3);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '23652369', 2);
INSERT INTO TELEFONE VALUES(NULL, 'COM', '45632145', 5);