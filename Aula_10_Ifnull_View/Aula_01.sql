/* IFNULL */ 

select f.nome, f.email, e.estado, t.numero
from formulario f
inner join enderecos e 
on f.idcliente = e.id_cliente
inner join telefone t
on f.idcliente = t.id_cliente;

+------------+--------------------+--------+----------+
| nome       | email              | estado | numero   |
+------------+--------------------+--------+----------+
| ANTONIO    | ANTONIO@UOL.COM    | PR     | 68976565 |
| ANTONIO    | ANTONIO@UOL.COM    | PR     | 99656675 |
| CARMEM     | CARMEM@IG.COM      | RJ     | 33567765 |
| CARMEM     | CARMEM@IG.COM      | RJ     | 88668786 |
| CARMEM     | CARMEM@IG.COM      | RJ     | 55689654 |
| ADRIANA    | ADRIANA@GMAIL.COM  | RJ     | 88687979 |
| JOICE      | JOICE@GMAIL.COM    | RJ     | 88965676 |
| DANIELE    | DANIELE@GMAIL.COM  | ES     | 89966809 |
| LORENA     | NULL               | RJ     | 88679978 |
| EDUARDO    | NULL               | PR     | 99655768 |
| ANTONIO    | ANTONIO@IG.COM     | SP     | 89955665 |
| ANTONIO    | ANTONIO@IG.COM     | SP     | 77455786 |
| GIOVANA    | NULL               | RJ     | 89766554 |
| ADRIANA    | ADRIANA@GMAIL.COM  | RJ     | 77755785 |
| ANDRE      | ANDRE@GLOBO.COM    | RJ     | 44522578 |
| Letiçia    | letiçia@123.com    | RJ     | 98653652 |
| Maira      | Maira@123.com      | RJ     | 98565326 |
| Ronaldinho | ronaldinho@123.com | RJ     | 95822368 |
| Celia      | celia@123.com      | RJ     | 23651456 |
| Fernando   | fefe@123.com       | RJ     | 85623659 |
| Fernando   | fefe@123.com       | RJ     | 84715245 |
| Barbara    | barbara@123.com    | RJ     | 23652369 |
| Celia      | celia@123.com      | RJ     | 45632145 |
+------------+--------------------+--------+----------+



/* Função IFNULL */
select f.nome, ifnull(f.email, 'Vazio'), e.estado, t.numero
from formulario f
inner join enderecos e 
on f.idcliente = e.id_cliente
inner join telefone t
on f.idcliente = t.id_cliente;

+------------+--------------------------+--------+----------+
| nome       | ifnull(f.email, 'Vazio') | estado | numero   |
+------------+--------------------------+--------+----------+
| ANTONIO    | ANTONIO@UOL.COM          | PR     | 68976565 |
| ANTONIO    | ANTONIO@UOL.COM          | PR     | 99656675 |
| CARMEM     | CARMEM@IG.COM            | RJ     | 33567765 |
| CARMEM     | CARMEM@IG.COM            | RJ     | 88668786 |
| CARMEM     | CARMEM@IG.COM            | RJ     | 55689654 |
| ADRIANA    | ADRIANA@GMAIL.COM        | RJ     | 88687979 |
| JOICE      | JOICE@GMAIL.COM          | RJ     | 88965676 |
| DANIELE    | DANIELE@GMAIL.COM        | ES     | 89966809 |
| LORENA     | Vazio                    | RJ     | 88679978 |
| EDUARDO    | Vazio                    | PR     | 99655768 |
| ANTONIO    | ANTONIO@IG.COM           | SP     | 89955665 |
| ANTONIO    | ANTONIO@IG.COM           | SP     | 77455786 |
| GIOVANA    | Vazio                    | RJ     | 89766554 |
| ADRIANA    | ADRIANA@GMAIL.COM        | RJ     | 77755785 |
| ANDRE      | ANDRE@GLOBO.COM          | RJ     | 44522578 |
| Letiçia    | letiçia@123.com          | RJ     | 98653652 |
| Maira      | Maira@123.com            | RJ     | 98565326 |
| Ronaldinho | ronaldinho@123.com       | RJ     | 95822368 |
| Celia      | celia@123.com            | RJ     | 23651456 |
| Fernando   | fefe@123.com             | RJ     | 85623659 |
| Fernando   | fefe@123.com             | RJ     | 84715245 |
| Barbara    | barbara@123.com          | RJ     | 23652369 |
| Celia      | celia@123.com            | RJ     | 45632145 |
+------------+--------------------------+--------+----------+

/* É uma função que retorna um valor para elementos NULL */ 



/* Usa-se AS E UM NOME para a função não aparecer na coluna */
select f.nome, ifnull(f.email, 'Vazio') as EMAIL, e.estado, t.numero
from formulario f
inner join enderecos e 
on f.idcliente = e.id_cliente
inner join telefone t
on f.idcliente = t.id_cliente;

+------------+--------------------+--------+----------+
| nome       | EMAIL              | estado | numero   |
+------------+--------------------+--------+----------+
| ANTONIO    | ANTONIO@UOL.COM    | PR     | 68976565 |
| ANTONIO    | ANTONIO@UOL.COM    | PR     | 99656675 |
| CARMEM     | CARMEM@IG.COM      | RJ     | 33567765 |
| CARMEM     | CARMEM@IG.COM      | RJ     | 88668786 |
| CARMEM     | CARMEM@IG.COM      | RJ     | 55689654 |
| ADRIANA    | ADRIANA@GMAIL.COM  | RJ     | 88687979 |
| JOICE      | JOICE@GMAIL.COM    | RJ     | 88965676 |
| DANIELE    | DANIELE@GMAIL.COM  | ES     | 89966809 |
| LORENA     | Vazio              | RJ     | 88679978 |
| EDUARDO    | Vazio              | PR     | 99655768 |
| ANTONIO    | ANTONIO@IG.COM     | SP     | 89955665 |
| ANTONIO    | ANTONIO@IG.COM     | SP     | 77455786 |
| GIOVANA    | Vazio              | RJ     | 89766554 |
| ADRIANA    | ADRIANA@GMAIL.COM  | RJ     | 77755785 |
| ANDRE      | ANDRE@GLOBO.COM    | RJ     | 44522578 |
| Letiçia    | letiçia@123.com    | RJ     | 98653652 |
| Maira      | Maira@123.com      | RJ     | 98565326 |
| Ronaldinho | ronaldinho@123.com | RJ     | 95822368 |
| Celia      | celia@123.com      | RJ     | 23651456 |
| Fernando   | fefe@123.com       | RJ     | 85623659 |
| Fernando   | fefe@123.com       | RJ     | 84715245 |
| Barbara    | barbara@123.com    | RJ     | 23652369 |
| Celia      | celia@123.com      | RJ     | 45632145 |
+------------+--------------------+--------+----------+



/* ----- VIEW ----- */ 
/* É permitido fazer UPDATE na VIEW, irá alterar a tabela também*/


/* Criando uma função view */
create view V_RELATORIO as 
select f.idcliente, f.nome, f.sexo, f.email, f.cpf, 
e.rua, e.bairro, e.cidade, e.estado, 
t.numero, t.tipo
from formulario f 
inner join enderecos e 
on f.idcliente = e.id_cliente
inner join telefone t 
on f.idcliente = t.id_cliente;


/* Apagando uma função view */
drop view RELATORIO;


select * from RELATORIO;
/* Tabela ficou muito grande para ser colocada aqui. */ 


select nome, sexo, bairro, numero
from v_relatorio;

+------------+------+-----------------+----------+
| nome       | sexo | bairro          | numero   |
+------------+------+-----------------+----------+
| ANTONIO    | M    | BOM RETIRO      | 68976565 |
| ANTONIO    | M    | BOM RETIRO      | 99656675 |
| CARMEM     | F    | CENTRO          | 33567765 |
| CARMEM     | F    | CENTRO          | 88668786 |
| CARMEM     | F    | CENTRO          | 55689654 |
| ADRIANA    | F    | CENTRO          | 88687979 |
| JOICE      | F    | CENTRO          | 88965676 |
| DANIELE    | F    | CENTRO          | 89966809 |
| LORENA     | F    | LEBLON          | 88679978 |
| EDUARDO    | M    | CENTRO          | 99655768 |
| ANTONIO    | M    | JARDINS         | 89955665 |
| ANTONIO    | M    | JARDINS         | 77455786 |
| GIOVANA    | F    | CENTRO          | 89766554 |
| ADRIANA    | F    | CENTRO          | 77755785 |
| ANDRE      | M    | ESTACIO         | 44522578 |
| Letiçia    | F    | Vila isabel     | 98653652 |
| Maira      | F    | Leblon          | 98565326 |
| Ronaldinho | M    | Ipanema         | 95822368 |
| Celia      | F    | Barra da tijuca | 23651456 |
| Fernando   | M    | Copacabana      | 85623659 |
| Fernando   | M    | Copacabana      | 84715245 |
| Barbara    | F    | Catete          | 23652369 |
| Celia      | F    | Barra da tijuca | 45632145 |
+------------+------+-----------------+----------+


/* ----- Continuando VIEW ----- */

create table teste_view_jogadores(
	ID int,
	NOME varchar(30),
	UF char(2)
);


insert into teste_view_jogadores values(1, 'Eden Hazard', 'RJ');
insert into teste_view_jogadores values(2, 'Ganso', 'RJ');
insert into teste_view_jogadores values(3, 'Nino', 'RJ');
insert into teste_view_jogadores values(4, 'Gum', 'RJ');
insert into teste_view_jogadores values(5, 'Washington','SP');


select * from teste_view_jogadores;

+------+-------------+------+
| ID   | NOME        | UF   |
+------+-------------+------+
|    1 | Eden Hazard | RJ   |
|    2 | Ganso       | RJ   |
|    3 | Nino        | RJ   |
|    4 | Gum         | RJ   |
|    5 | Washington  | SP   |
+------+-------------+------+


create view jogadores as 
select id, nome, uf
from teste_view_jogadores;


select * from jogadores;

+------+-------------+------+
| id   | nome        | uf   |
+------+-------------+------+
|    1 | Eden Hazard | RJ   |
|    2 | Ganso       | RJ   |
|    3 | Nino        | RJ   |
|    4 | Gum         | RJ   |
|    5 | Washington  | SP   |
+------+-------------+------+


update jogadores 
set nome = 'Marcão'
where id = 5;


select * from jogadores;

+------+-------------+------+
| id   | nome        | uf   |
+------+-------------+------+
|    1 | Eden Hazard | RJ   |
|    2 | Ganso       | RJ   |
|    3 | Nino        | RJ   |
|    4 | Gum         | RJ   |
|    5 | Marcão      | SP   |
+------+-------------+------+


select * from teste_view_jogadores;

+------+-------------+------+
| ID   | NOME        | UF   |
+------+-------------+------+
|    1 | Eden Hazard | RJ   |
|    2 | Ganso       | RJ   |
|    3 | Nino        | RJ   |
|    4 | Gum         | RJ   |
|    5 | Marcão      | SP   |
+------+-------------+------+