/* MODELANDO BANCO DE DADOS PARA SISTEMAS */
/* 
PRIMEIRA FORMA NORMAL

1 - Todo campo vetorizado se tornará outra lista

2 - Todo campo multivalorizado se tornará outra tabela. Quando o campo for divisível.

3 - Toda tabela necessita de pelo menos um campo que identifique todo o registro como sendo unico.
Isso é o que chamamos de chave primário ou primary key 
*/


/* Passo a passo criando um banco de dados */

CREATE DATABASE comercio;

use comercio;

create table cliente(
	IDCLIENTE int primary key auto_increment, 
	NOME VARCHAR(30) not null, 
	SEXO enum('M', 'F') not null,
	EMAIL varchar(50) UNIQUE,
	CPF varchar(15) UNIQUE
);


/* 

PRIMARY KEY --> Funciona como um identificador para cada cadastro.

NOT NULL --> O campo deve ser preenchido obrigatoriamente, não pode ter valor null, não pode ser vazio.

ENUM --> funciona como uma caixa, deve-se escolher uma das opções, também é obrigatório escolher uma das opções.

UNIQUE --> O valor se torna unico, não haverá nem um igual, igual ao CPF .

 */


create table endereco(
	IDENDERECO int primary key auto_increment,
	RUA varchar(30) not null,
	BAIRRO varchar(30) not null,
	CIDADE varchar (30) not null,
	ESTADO char(2) not null
);