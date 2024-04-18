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