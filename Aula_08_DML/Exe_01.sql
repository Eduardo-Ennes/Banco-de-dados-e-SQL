/* Relatório geral de todos os clientes */ 

1)
select idcliente, nome, sexo, email, cpf, 
rua, bairro, cidade, estado, 
tipo, numero
from formulario f 
inner join enderecos e 
on f.idcliente = e.id_cliente
inner join telefone t  
on f.idcliente = t.id_cliente;


2)
select idcliente, nome, sexo, email, cpf, 
rua, bairro, cidade, estado, 
tipo, numero
from formulario f 
inner join enderecos e 
on f.idcliente = e.id_cliente
inner join telefone t  
on f.idcliente = t.id_cliente
where sexo = 'M';


3)
select idcliente, nome, sexo, email, cpf, 
rua, bairro, cidade, estado, 
tipo, numero
from formulario f 
inner join enderecos e 
on f.idcliente = e.id_cliente
inner join telefone t  
on f.idcliente = t.id_cliente
where sexo = 'F';


4)
select count(*) as quantidade, sexo 
from formulario
group by sexo;


select idcliente, nome, sexo, email, cpf, 
rua, bairro, cidade, estado, 
tipo, numero
from formulario f 
inner join enderecos e 
on f.idcliente = e.id_cliente
inner join telefone t  
on f.idcliente = t.id_cliente
where sexo = 'F';


5) /* Ambos os códigos trazem o mesmo resultado */
select f.idcliente, f.nome, f.sexo, f.email, e.bairro, e.cidade, e.estado, t.tipo
from formulario f
inner join enderecos e
on f.idcliente = e.id_cliente
inner join telefone t 
on f.idcliente = t.id_cliente
where BAIRRO = 'CENTRO'
AND CIDADE = 'RIO DE JANEIRO'
AND ESTADO = 'RJ'
AND TIPO IN ('RES', 'COM');

+-----------+---------+------+-------------------+--------+----------------+--------+------+
| idcliente | nome    | sexo | email             | bairro | cidade         | estado | tipo |
+-----------+---------+------+-------------------+--------+----------------+--------+------+
|         3 | GIOVANA | F    | NULL              | CENTRO | RIO DE JANEIRO | RJ     | RES  |
|        11 | CARMEM  | F    | CARMEM@IG.COM     | CENTRO | RIO DE JANEIRO | RJ     | COM  |
|        12 | ADRIANA | F    | ADRIANA@GMAIL.COM | CENTRO | RIO DE JANEIRO | RJ     | COM  |
|        12 | ADRIANA | F    | ADRIANA@GMAIL.COM | CENTRO | RIO DE JANEIRO | RJ     | RES  |
|        13 | JOICE   | F    | JOICE@GMAIL.COM   | CENTRO | RIO DE JANEIRO | RJ     | COM  |
+-----------+---------+------+-------------------+--------+----------------+--------+------+



select f.idcliente, f.nome, f.sexo, f.email, e.bairro, e.cidade, e.estado, t.tipo
from formulario f
inner join enderecos e
on f.idcliente = e.id_cliente
inner join telefone t 
on f.idcliente = t.id_cliente
where BAIRRO = 'CENTRO'
AND CIDADE = 'RIO DE JANEIRO'
AND ESTADO = 'RJ'
AND (TIPO = 'RES' OR TIPO = 'COM');

+-----------+---------+------+-------------------+--------+----------------+--------+------+
| idcliente | nome    | sexo | email             | bairro | cidade         | estado | tipo |
+-----------+---------+------+-------------------+--------+----------------+--------+------+
|         3 | GIOVANA | F    | NULL              | CENTRO | RIO DE JANEIRO | RJ     | RES  |
|        11 | CARMEM  | F    | CARMEM@IG.COM     | CENTRO | RIO DE JANEIRO | RJ     | COM  |
|        12 | ADRIANA | F    | ADRIANA@GMAIL.COM | CENTRO | RIO DE JANEIRO | RJ     | COM  |
|        12 | ADRIANA | F    | ADRIANA@GMAIL.COM | CENTRO | RIO DE JANEIRO | RJ     | RES  |
|        13 | JOICE   | F    | JOICE@GMAIL.COM   | CENTRO | RIO DE JANEIRO | RJ     | COM  |
+-----------+---------+------+-------------------+--------+----------------+--------+------+



select f.nome, f.email, t.numero, t.tipo, t.id_cliente, e.estado
from formulario f  
inner join telefone t  
on f.idcliente = t.id_cliente
inner join enderecos e 
on f.idcliente = e.id_cliente
where estado = 'RJ'
and tipo = 'CEL';


+------------+--------------------+----------+------+------------+--------+
| nome       | email              | numero   | tipo | id_cliente | estado |
+------------+--------------------+----------+------+------------+--------+
| CARMEM     | CARMEM@IG.COM      | 33567765 | CEL  |         11 | RJ     |
| CARMEM     | CARMEM@IG.COM      | 88668786 | CEL  |         11 | RJ     |
| Letiçia    | letiçia@123.com    | 98653652 | CEL  |         15 | RJ     |
| Barbara    | barbara@123.com    | 23652369 | CEL  |         16 | RJ     |
| Fernando   | fefe@123.com       | 85623659 | CEL  |         17 | RJ     |
| Fernando   | fefe@123.com       | 84715245 | CEL  |         17 | RJ     |
| Ronaldinho | ronaldinho@123.com | 95822368 | CEL  |         21 | RJ     |
+------------+--------------------+----------+------+------------+--------+



select f.nome, f.email, t.numero, e.estado
from formulario f  
inner join telefone t  
on f.idcliente = t.id_cliente
inner join enderecos e 
on f.idcliente = e.id_cliente
where sexo = 'F' 
and estado = 'SP';


select f.nome, f.sexo, t.numero, t.tipo, e.estado
from formulario f
inner join telefone t
on f.idcliente = t.id_cliente
inner join enderecos e
on f.idcliente = e.id_cliente;

RES: VAZIO