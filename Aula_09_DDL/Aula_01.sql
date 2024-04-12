/* 

DML - Date Manipulation Language 
DDL - Date Defition Language 
DCL - Date Control Language 
TCL - Transanction Control Language 

*/

create table produto(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	PRECO INT NOT NULL,
	FRETE FLOAT(10,2) NOT NULL
);

/* ALTER */

/* CHANGE -> MELHOR USAR PARA ALTERAR O NOME DA COLUNA */
 
alter table produto
change VALOR VALOR_UNITARIO INT NOT NULL; 

/* MODIFY -> MELHOR USAR PARA ALTERAR O TIPO DA COLUNA */
alter table produto 
modify VALOR_UNITARIO INT(6) NOT NULL; 


/* Adicionando coluna */ 
/* ADD -> usado para adicionar*/

alter table produto
add peso float(10,2) not null;


/* Apagando coluna */
/* DROP -> Usado para apagar */
alter table produto 
drop column peso;


/* Adicionando coluna em um lugar especifico */
/* AFTER -> Depois */
alter table produto 
add PESO FLOAT(10,2) NOT NULL 
AFTER VALOR_UNITARIO;


/* Adicionando a uma coluna em primeiro */
/* FIRST -> Primeiro*/
alter table produto 
add PESO FLOAT(10,2) NOT NULL 
first;