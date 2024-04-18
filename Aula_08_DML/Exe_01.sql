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

/* Tabela ficou muito grande para ser colocada aqui. */ 


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

+-----------+------------+------+--------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| idcliente | nome       | sexo | email              | cpf         | rua                | bairro     | cidade         | estado | tipo | numero   |
+-----------+------------+------+--------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         2 | ANDRE      | M    | ANDRE@GLOBO.COM    | 7687567     | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 44522578 |
|         7 | EDUARDO    | M    | NULL               | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 99655768 |
|         8 | ANTONIO    | M    | ANTONIO@IG.COM     | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | RES  | 89955665 |
|         8 | ANTONIO    | M    | ANTONIO@IG.COM     | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | RES  | 77455786 |
|         9 | ANTONIO    | M    | ANTONIO@UOL.COM    | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | RES  | 68976565 |
|         9 | ANTONIO    | M    | ANTONIO@UOL.COM    | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99656675 |
|        17 | Fernando   | M    | fefe@123.com       | 34261845326 | Boiabeira grande   | Copacabana | Rio de Janeiro | RJ     | CEL  | 85623659 |
|        17 | Fernando   | M    | fefe@123.com       | 34261845326 | Boiabeira grande   | Copacabana | Rio de Janeiro | RJ     | CEL  | 84715245 |
|        21 | Ronaldinho | M    | ronaldinho@123.com | 45625641523 | Palho sem aço      | Ipanema    | Rio de Janeiro | RJ     | CEL  | 95822368 |
+-----------+------------+------+--------------------+-------------+--------------------+------------+----------------+--------+------+----------+


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

+-----------+----------+------+-------------------+-------------+------------------+-----------------+----------------+--------+------+----------+
| idcliente | nome     | sexo | email             | cpf         | rua              | bairro          | cidade         | estado | tipo | numero   |
+-----------+----------+------+-------------------+-------------+------------------+-----------------+----------------+--------+------+----------+
|         3 | GIOVANA  | F    | NULL              | 0876655     | RUA VISCONDESSA  | CENTRO          | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|         5 | DANIELE  | F    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA  | CENTRO          | VITORIA        | ES     | CEL  | 89966809 |
|         6 | LORENA   | F    | NULL              | 774557887   | RUA CASTRO ALVES | LEBLON          | RIO DE JANEIRO | RJ     | COM  | 88679978 |
|        11 | CARMEM   | F    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO     | CENTRO          | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | CARMEM   | F    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO     | CENTRO          | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        11 | CARMEM   | F    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO     | CENTRO          | RIO DE JANEIRO | RJ     | COM  | 55689654 |
|        12 | ADRIANA  | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE | CENTRO          | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        12 | ADRIANA  | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE | CENTRO          | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        13 | JOICE    | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE | CENTRO          | RIO DE JANEIRO | RJ     | COM  | 88965676 |
|        15 | Letiçia  | F    | letiçia@123.com   | 63521653456 | Sal sem dente    | Vila isabel     | Rio de Janeiro | RJ     | CEL  | 98653652 |
|        16 | Barbara  | F    | barbara@123.com   | 75632641563 | Alura            | Catete          | Rio de Janeiro | RJ     | CEL  | 23652369 |
|        18 | Maira    | F    | Maira@123.com     | 15236456325 | Munis freitas    | Leblon          | Rio de Janeiro | RJ     | RES  | 98565326 |
|        19 | Celia    | F    | celia@123.com     | 95686953265 | Súmario da voz   | Barra da tijuca | Rio de Janeiro | RJ     | COM  | 23651456 |
|        19 | Celia    | F    | celia@123.com     | 95686953265 | Súmario da voz   | Barra da tijuca | Rio de Janeiro | RJ     | COM  | 45632145 |
+-----------+----------+------+-------------------+-------------+------------------+-----------------+----------------+--------+------+----------+


4)
select count(*) as quantidade, sexo 
from formulario
group by sexo;

+------------+------+
| quantidade | sexo |
+------------+------+
|          8 | M    |
|         13 | F    |
+------------+------+


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


6)
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


7)
select f.nome, f.email, t.numero, e.estado
from formulario f  
inner join telefone t  
on f.idcliente = t.id_cliente
inner join enderecos e 
on f.idcliente = e.id_cliente
where sexo = 'F' 
and estado = 'SP';


RES: VAZIO